/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author trant
 */
@Entity
@Table(name = "Thethaobongda")
public class Hanggiua {
    @Id
    @GeneratedValue
    private int id;
    private String hinh;
    private String tieude;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHinh() {
        return hinh;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }
}
