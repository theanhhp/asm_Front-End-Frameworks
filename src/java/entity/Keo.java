/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Time;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author trant
 */
@Entity
@Table(name = "Ngoaihanganh")
public class Keo {

    @Id
    @GeneratedValue
    private int id;
    private String chunha;

    private String ngay;

    private String gio;
    private String doikhach;
    private String luocchapcn;
    private String luotchapkhach;
    private String phantramancn;
    private String phantramandk;
    private String taixui;
    private String luotaancn;
    private String luotandk;
    private String mxh;
    private String luotchapcnhd;
    private String luotchapkhd;
    private String phanancnhd;
    private String phanandkhd;
    private String taixuihd;
    private String ptacn;
    private String ptadk;
    private String mxhhd;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getChunha() {
        return chunha;
    }

    public void setChunha(String chunha) {
        this.chunha = chunha;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public String getGio() {
        return gio;
    }

    public void setGio(String gio) {
        this.gio = gio;
    }

    public String getDoikhach() {
        return doikhach;
    }

    public void setDoikhach(String doikhach) {
        this.doikhach = doikhach;
    }

    public String getLuocchapcn() {
        return luocchapcn;
    }

    public void setLuotchapcn(String luocchapcn) {
        this.luocchapcn = luocchapcn;
    }

    public String getLuotchapkhach() {
        return luotchapkhach;
    }

    public void setLuotchapkhach(String luotchapkhach) {
        this.luotchapkhach = luotchapkhach;
    }

    public String getPhantramancn() {
        return phantramancn;
    }

    public void setPhantramancn(String phantramancn) {
        this.phantramancn = phantramancn;
    }

    public String getPhantramandk() {
        return phantramandk;
    }

    public void setPhantramandk(String phantramandk) {
        this.phantramandk = phantramandk;
    }

    public String getTaixui() {
        return taixui;
    }

    public void setTaixui(String taixui) {
        this.taixui = taixui;
    }

    public String getLuotaancn() {
        return luotaancn;
    }

    public void setLuotaancn(String luotaancn) {
        this.luotaancn = luotaancn;
    }

    public String getLuotandk() {
        return luotandk;
    }

    public void setLuotandk(String luotandk) {
        this.luotandk = luotandk;
    }

    public String getMxh() {
        return mxh;
    }

    public void setMxh(String mxh) {
        this.mxh = mxh;
    }

    public String getLuotchapcnhd() {
        return luotchapcnhd;
    }

    public void setLuotchapcnhd(String luotchapcnhd) {
        this.luotchapcnhd = luotchapcnhd;
    }

    public String getLuotchapkhd() {
        return luotchapkhd;
    }

    public void setLuotchapkhd(String luotchapkhd) {
        this.luotchapkhd = luotchapkhd;
    }

    public String getPhanancnhd() {
        return phanancnhd;
    }

    public void setPhanancnhd(String phanancnhd) {
        this.phanancnhd = phanancnhd;
    }

    public String getPhanandkhd() {
        return phanandkhd;
    }

    public void setPhanandkhd(String phanandkhd) {
        this.phanandkhd = phanandkhd;
    }

    public String getTaixuihd() {
        return taixuihd;
    }

    public void setTaixuihd(String taixuihd) {
        this.taixuihd = taixuihd;
    }

    public String getPtacn() {
        return ptacn;
    }

    public void setPtacn(String ptacn) {
        this.ptacn = ptacn;
    }

    public String getPtadk() {
        return ptadk;
    }

    public void setPtadk(String ptadk) {
        this.ptadk = ptadk;
    }

    public String getMxhhd() {
        return mxhhd;
    }

    public void setMxhhd(String mxhhd) {
        this.mxhhd = mxhhd;
    }

}
