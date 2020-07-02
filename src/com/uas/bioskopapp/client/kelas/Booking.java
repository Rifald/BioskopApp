/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uas.bioskopapp.client.kelas;

import com.uas.bioskopapp.connect.Konek;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Booking {
    private Connection koneksi;
    private PreparedStatement ps;
    private Konek kdb = new Konek();
    private Statement cs;
    
    public Booking(){
    
    }
    
    public void comboDataBioskop(DefaultComboBoxModel model){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT * FROM bioskop";
       
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();

            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);

            model.addElement("--Pilih Bioskop--");
            while (rs.next()){
                
                if(model.getIndexOf(rs.getString(2)) == -1 ) {
                    model.addElement(rs.getString(2));
                }
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
    
    public void insertFilmComboBox(DefaultComboBoxModel model, String index){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT bioskop.nama_bioskop, film.nama_film, studio.no_studio "
                + "FROM bioskop INNER JOIN studio ON bioskop.id_bioskop = studio.id_bioskop INNER JOIN film ON studio.id_film = film.id_film "
                + "WHERE bioskop.nama_bioskop ='"+index+"' ";

       
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();
            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);
            
            model.addElement("--Pilih Film--");
           
            while (rs.next()){

                if(model.getIndexOf(rs.getString(2)) == -1 ) {
                    
                    model.addElement(rs.getString(2));
                }
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
    
    public void getStudio(JLabel label, String nama_bioskop, String judul){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT bioskop.nama_bioskop, film.nama_film, studio.no_studio "
                + "FROM bioskop INNER JOIN studio ON bioskop.id_bioskop = studio.id_bioskop INNER JOIN film ON studio.id_film = film.id_film "
                + "WHERE bioskop.nama_bioskop = '"+nama_bioskop+"' AND film.nama_film = '"+judul+"' ";
        
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();
            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);

            while (rs.next()){
                label.setText(rs.getString(3));
            }
           
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
    
    public void getDataFilm(JLabel judulL,JLabel genreL,JLabel durasiL,JLabel tglL,JLabel jamL,JLabel hargaL, String nama_bioskop, String judul){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT film.nama_film, film.genre, film.durasi, studio.tanggal, studio.jam_mulai, studio.harga "
                + "FROM bioskop INNER JOIN studio ON bioskop.id_bioskop=studio.id_bioskop INNER JOIN film ON film.id_film=studio.id_film "
                + "WHERE bioskop.nama_bioskop = "
                + "'"+nama_bioskop+"' AND film.nama_film = '"+judul+"' ";
        
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();
            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);
                       
            while (rs.next()){
                judulL.setText(rs.getString(1));
                genreL.setText(rs.getString(2));
                durasiL.setText(rs.getString(3));
                tglL.setText(rs.getString(4));
                jamL.setText(rs.getString(5));
                hargaL.setText(rs.getString(6));
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
    
        public void comboDataFilm(DefaultComboBoxModel model){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT * FROM film";
       
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();
            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);
            model.addElement("--Pilih Film--");
           
            while (rs.next()){

                if(model.getIndexOf(rs.getString(2)) == -1 ) {
                    model.addElement(rs.getString(2));
                }
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
        
}
