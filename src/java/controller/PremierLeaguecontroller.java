/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.XepHang;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
@RequestMapping("/XepHang")
public class PremierLeaguecontroller {
    @Autowired
    SessionFactory factory;


    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("XepHang", new XepHang());
        model.addAttribute("XepHangs", getXepHang());
        return "XepHang";
    }
    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("XepHang") XepHang XepHang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(XepHang);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("XepHangs", getXepHang());
        return "XepHang";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("XepHang") XepHang XepHang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(XepHang);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("XepHangs", getXepHang());
        return "XepHang";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, XepHang XepHang) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(XepHang);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("XepHang", new XepHang());
        model.addAttribute("XepHangs", getXepHang());
        return "XepHang";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        XepHang XepHang = (XepHang) session.get(XepHang.class, id);

        model.addAttribute("XepHang", XepHang);
        model.addAttribute("XepHangs", getXepHang());
        return "XepHang";
    }
   @ModelAttribute("XepHangs")
    @SuppressWarnings("unchecked")
    public List<XepHang> getXepHang() {
        Session session = factory.openSession();
        String hql = "FROM XepHang";
        Query query = session.createQuery(hql);
        List<XepHang> list = query.list();
        return list;
    }
   
}
