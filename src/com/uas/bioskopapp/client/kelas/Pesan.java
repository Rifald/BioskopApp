/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uas.bioskopapp.client.kelas;

import com.uas.bioskopapp.connect.Konek;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class Pesan {
    private Connection koneksi;
    private PreparedStatement ps;
    private Konek kdb = new Konek();
    private String username, nama, nama_bioskop, nomor_studio, judul, tanggal, jam, baris, nomor_bangku, harga;
    
    public Pesan(){
        
    }
    
    public Pesan(String username, String nama_bioskop, String judul, String nomor_studio, String tanggal, String jam, String nama, String baris, String nomor_bangku, String harga) {
        this.username = username;
        this.nama = nama;
        this.nama_bioskop = nama_bioskop;
        this.nomor_studio = nomor_studio;
        this.judul = judul;
        this.tanggal = tanggal;
        this.jam = jam;
        this.baris = baris;
        this.nomor_bangku = nomor_bangku;
        this.harga = harga;
    }
    
        public boolean masukkanData() throws SQLException {

        Connection dbConnection = null;
        PreparedStatement ps = null;
        int rowAffect = 0;
        String insertTableSQL = "INSERT INTO pesan"
                + "(username, nama_bioskop, nama_film, no_studio, tanggal, jam, nama_pemesan, baris, nomor, harga, status) VALUES"
                + "(?,?,?,?,?,?,?,?,?,?,?)";
        try {

            kdb.bukaKoneksi();

            dbConnection = kdb.getConn();
 
            ps = dbConnection.prepareStatement(insertTableSQL);
            ps.setString(1, this.username);
            ps.setString(2, this.nama_bioskop);
            ps.setString(3, this.judul);
            ps.setString(4, this.nomor_studio);
            ps.setString(5, this.tanggal);
            ps.setString(6, this.jam);
            ps.setString(7, this.nama);
            ps.setString(8, this.baris);
            ps.setString(9, this.nomor_bangku);
            ps.setString(10, this.harga);
            ps.setString(11, "NOT CONFIRM");

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
