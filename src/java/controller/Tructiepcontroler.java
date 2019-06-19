/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import entity.Tructiep;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 *
 * @author trant
 */
@Transactional
@Controller
@RequestMapping("/Tructiep")
public class Tructiepcontroler {
    @Autowired
    SessionFactory factory;


    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Tructiep", new Tructiep());
        model.addAttribute("Tructieps", getTructiep());
        return "Tructiep";
    }
    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("Tructiep") Tructiep Tructiep) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(Tructiep);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Tructieps", getTructiep());
        return "Tructiep";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("Tructiep") Tructiep Tructiep) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(Tructiep);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("Tructieps", getTructiep());
        return "Tructiep";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, Tructiep Tructiep) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(Tructiep);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Tructiep", new Tructiep());
        model.addAttribute("Tructieps", getTructiep());
        return "Tructiep";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        Tructiep Tructiep = (Tructiep)session.get(Tructiep.class, id);

        model.addAttribute("Tinthethao", Tructiep);
        model.addAttribute("Tinthethaos", getTructiep());
        return "Tinthethao";
    }
   @ModelAttribute("Tructieps")
    @SuppressWarnings("unchecked")
    public List<Tructiep> getTructiep() {
        Session session = factory.openSession();
        String hql = "FROM Tructiep";
        Query query = session.createQuery(hql);
        List<Tructiep> list = query.list();
        return list;
    }
    
}
