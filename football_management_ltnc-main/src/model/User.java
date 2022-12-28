/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author LamPham
 */
public class User {

    int id;
    String TK, email, MK, tinhtrang;

    public User() {
    }

    public User(int id, String tinhtrang, String TK, String email, String MK) {
        this.id = id;
        this.tinhtrang = tinhtrang;
        this.TK = TK;
        this.email = email;
        this.MK = MK;
    }

    public User(String tinhtrang, String TK, String email, String MK) {
        this.tinhtrang = tinhtrang;
        this.TK = TK;
        this.email = email;
        this.MK = MK;
    }

    public User(int id, String tinhtrang, String TK, String email) {
        this.id = id;
        this.tinhtrang = tinhtrang;
        this.TK = TK;
        this.email = email;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(String tinhtrang) {
        this.tinhtrang = tinhtrang;
    }

    public String getTK() {
        return TK;
    }

    public void setTK(String TK) {
        this.TK = TK;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMK() {
        return MK;
    }

    public void setMK(String MK) {
        this.MK = MK;
    }

}
