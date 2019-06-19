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

@Entity
@Table(name = "PremierLeague")
public class XepHang {
    @Id
    @GeneratedValue
    private int id;
    private String tendoibong;
    private int sotran;
    private int thang;
    private int hoa;
    private int bai;
    private int sobanthang;
    private int diem;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTendoibong() {
        return tendoibong;
    }

    public void setTendoibong(String tendoibong) {
        this.tendoibong = tendoibong;
    }

    public int getSotran() {
        return sotran;
    }

    public void setSotran(int sotran) {
        this.sotran = sotran;
    }

    public int getThang() {
        return thang;
    }

    public void setThang(int thang) {
        this.thang = thang;
    }

    public int getHoa() {
        return hoa;
    }

    public void setHoa(int hoa) {
        this.hoa = hoa;
    }

    public int getBai() {
        return bai;
    }

    public void setBai(int bai) {
        this.bai = bai;
    }

    public int getSobanthang() {
        return sobanthang;
    }

    public void setSobanthang(int sobanthang) {
        this.sobanthang = sobanthang;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    
}
