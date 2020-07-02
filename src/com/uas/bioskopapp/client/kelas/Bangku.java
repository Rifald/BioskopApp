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
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Bangku {
    private Connection koneksi;
    private PreparedStatement ps;
    private Konek kdb = new Konek();
        private Statement cs;
    
    public Bangku(){
        
    }
    
    
    public void getDataBangku(String NoStudio, String NamaBioskop, int[] bangku){
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        String strSql="SELECT bangku.* FROM bioskop INNER JOIN studio ON bioskop.id_bioskop=studio.id_bioskop INNER JOIN film ON film.id_film=studio.id_film INNER JOIN bangku ON bangku.id_bangku=studio.id_bangku "
                + "WHERE bioskop.nama_bioskop = '"+NamaBioskop+"' AND no_studio = '"+NoStudio+"' ";
        
        try {
            kdb.bukaKoneksi();
            koneksi = kdb.getConn();
            cs = koneksi.createStatement();
            rs = cs.executeQuery(strSql);
           
            while (rs.next()){
                
                bangku[0] = Integer.parseInt(rs.getString(2));
                bangku[1] = Integer.parseInt(rs.getString(3));
                bangku[2] = Integer.parseInt(rs.getString(4));
                bangku[3] = Integer.parseInt(rs.getString(5));
                bangku[4] = Integer.parseInt(rs.getString(6));
                bangku[5] = Integer.parseInt(rs.getString(7));
                bangku[6] = Integer.parseInt(rs.getString(8));
                bangku[7] = Integer.parseInt(rs.getString(9));
                bangku[8] = Integer.parseInt(rs.getString(10));
                bangku[9] = Integer.parseInt(rs.getString(11));
                bangku[10] = Integer.parseInt(rs.getString(12));
                bangku[11] = Integer.parseInt(rs.getString(13));
                
               
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Terjadi Kesalahan : " +e);
        }
    }
    
    public boolean setBangku(String noStudio, String namaBioskop, String bangkuNya)
            throws SQLException {

        Connection dbConnection = null;
        PreparedStatement ps = null;
        int rowAffect = 0;
        String updateTableSQL = "UPDATE bioskop INNER JOIN studio ON bioskop.id_bioskop=studio.id_bioskop INNER JOIN film ON film.id_film=studio.id_film INNER JOIN bangku ON bangku.id_bangku=studio.id_bangku "
                + "SET bangku."+bangkuNya+" = 1 WHERE studio.no_studio = ? AND bioskop.nama_bioskop = ?";
        try {

            kdb.bukaKoneksi();

            dbConnection = kdb.getConn();

            ps = dbConnection.prepareStatement(updateTableSQL);
            ps.setString(1, noStudio);
            ps.setString(2, namaBioskop);

            rowAffect = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {

            ps.close();
        }

        if (rowAffect > 0) {
            return true;
        } else {
            return false;
        }
    }
}
