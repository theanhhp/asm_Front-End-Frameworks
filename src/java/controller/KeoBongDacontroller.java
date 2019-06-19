/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import entity.Keo;
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
@RequestMapping("/Keo")
public class KeoBongDacontroller {
    @Autowired
    SessionFactory factory;


    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Keo", new Keo());
        model.addAttribute("Keos", getKeo());
        return "Keo";
    }
    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("Keo") Keo Keo) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(Keo);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Keos", getKeo());
        return "Keo";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("Keo") Keo Keo) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(Keo);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("Keos", getKeo());
        return "Keo";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, Keo Keo) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(Keo);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Keo", new Keo());
        model.addAttribute("Keos", getKeo());
        return "Keo";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        Keo Keo = (Keo)session.get(Keo.class, id);

        model.addAttribute("Keo", Keo);
        model.addAttribute("Keos", getKeo());
        return "Keo";
    }
   @ModelAttribute("Keos")
    @SuppressWarnings("unchecked")
    public List<Keo> getKeo() {
        Session session = factory.openSession();
        String hql = "FROM Keo";
        Query query = session.createQuery(hql);
        List<Keo> list = query.list();
        return list;
    }
   
}
