/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Hanggiua;
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
@RequestMapping("/Hanggiua")
public class Hanggiuacontroller {

    @Autowired
    SessionFactory factory;

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Hanggiua", new Hanggiua());
        model.addAttribute("Hanggiuas", getHanggiua());
        return "Hanggiua";
    }

    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("Hanggiua") Hanggiua Hanggiua , Integer id) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
         
        try {
            if (id < 8) {
                session.save(Hanggiua);
                t.commit();
                model.addAttribute("message", "Thêm mới thành công !");
            } else {
                t.rollback();
                model.addAttribute("message", "Thêm mới thất bại !");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        model.addAttribute("Hanggiuas", getHanggiua());
        return "Hanggiua";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("Hanggiua") Hanggiua Hanggiua) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(Hanggiua);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("Hanggiuas", getHanggiua());
        return "Hanggiua";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, Hanggiua Hanggiua) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(Hanggiua);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Hanggiua", new Hanggiua());
        model.addAttribute("Hanggiuas", getHanggiua());
        return "Hanggiua";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        Hanggiua Hanggiua = (Hanggiua) session.get(Hanggiua.class, id);

        model.addAttribute("Hanggiua", Hanggiua);
        model.addAttribute("Hanggiuas", getHanggiua());
        return "Hanggiua";
    }

    @ModelAttribute("Hanggiuas")
    @SuppressWarnings("unchecked")
    public List<Hanggiua> getHanggiua() {
        Session session = factory.openSession();
        String hql = "FROM Hanggiua";
        Query query = session.createQuery(hql);
        List<Hanggiua> list = query.list();
        return list;
    }
}
