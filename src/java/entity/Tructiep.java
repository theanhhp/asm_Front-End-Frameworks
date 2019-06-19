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
@Table(name = "Tructiepbongda")
public class Tructiep {
    @Id
    @GeneratedValue
    private int id;
    private String hinhcn;
    private String hinhdk;
    private String tengiai;
    private String chunha;
    private String khach;   
    private String thoigian; 

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHinhcn() {
        return hinhcn;
    }

    public void setHinhcn(String hinhcn) {
        this.hinhcn = hinhcn;
    }

    public String getHinhdk() {
        return hinhdk;
    }

    public void setHinhdk(String hinhdk) {
        this.hinhdk = hinhdk;
    }

    public String getTengiai() {
        return tengiai;
    }

    public void setTengiai(String tengiai) {
        this.tengiai = tengiai;
    }

    public String getChunha() {
        return chunha;
    }

    public void setChunha(String chunha) {
        this.chunha = chunha;
    }

    public String getKhach() {
        return khach;
    }

    public void setKhach(String khach) {
        this.khach = khach;
    }

    public String getThoigian() {
        return thoigian;
    }

    public void setThoigian(String thoigian) {
        this.thoigian = thoigian;
    }
    
}
