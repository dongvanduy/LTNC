/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class TranDau {

    //int madoi, socauthu;
    String tendoi1, tendoi2, sandau;
    Date thoigian;

    public TranDau() {
    }

    public TranDau(String tendoi1, String tendoi2, Date thoigian, String sandau) {
        this.tendoi1 = tendoi1;
        this.tendoi2 = tendoi2;
        this.thoigian = thoigian;
        this.sandau = sandau;
    }


    public String getTendoi1() {
        return tendoi1;
    }

    public void setTendoi1(String tendoi1) {
        this.tendoi1 = tendoi1;
    }
    
    public String getTendoi2() {
        return tendoi2;
    }
    
    public void setTendoi2(String tendoi2) {
        this.tendoi1 = tendoi2;
    }
    
    
    public Date getThoigian() {
        return thoigian;
    }

    public void setThoigian(Date thoigian) {
        this.thoigian = thoigian;
    }

    public String getSandau() {
        return sandau;
    }

    public void setSandau(String sandau) {
        this.sandau = sandau;
    }

    
}

