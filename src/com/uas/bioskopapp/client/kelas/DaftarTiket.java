/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uas.bioskopapp.client.kelas;

/**
 *
 * @author User
 */
public class DaftarTiket {
    private String username,nama,bioskop,film,tgl,waktu,baris,nomor,harga;

    private int studio;
                


    public DaftarTiket(){}
    public DaftarTiket(String username,String bioskop,String film,String tgl,String waktu,String nama,String baris,String nomor,String harga,int studio){
        this.username =username;  
        this.nama =nama;  
        this.bioskop =bioskop;  
        this.film =film;  
        this.tgl =tgl;  
        this.waktu = waktu;  
        this.baris =baris;
        this.nomor =nomor;  
        this.harga =harga;  
        this.studio =studio;        
    }

    public String getUsername() {
        return username;
    }

    public String getNama() {
        return nama;
    }

    public String getBioskop() {
        return bioskop;
    }

    public String getFilm() {
        return film;
    }

    public String getTgl() {
        return tgl;
    }

    public String getWaktu() {
        return waktu;
    }

    public String getBaris() {
        return baris;
    }

    public String getNomor() {
        return nomor;
    }

    public String getHarga() {
        return harga;
    }

    public int getStudio() {
        return studio;
    }
    
    
}
