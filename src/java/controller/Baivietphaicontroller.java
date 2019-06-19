/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import entity.Baivietphai;
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
@RequestMapping("/Baivietphai")
public class Baivietphaicontroller {
    
    @Autowired
    SessionFactory factory;

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Baivietphai", new Baivietphai());
        model.addAttribute("BaivietphaiS", getBaivietphai());
        return "Baivietphai";
    }

    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("Baivietphai") Baivietphai Baivietphai , Integer id) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();        
        try {
            if (id < 9) {
                session.save(Baivietphai);
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
        model.addAttribute("Baivietphais", getBaivietphai());
        return "Baivietphai";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("Baivietphai") Baivietphai Baivietphai) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(Baivietphai);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("Baivietphais", getBaivietphai());
        return "Baivietphai";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, Baivietphai Baivietphai) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(Baivietphai);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Baivietphai", new Baivietphai());
        model.addAttribute("Baivietphais", getBaivietphai());
        return "Baivietphai";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        Baivietphai Baivietphai = (Baivietphai) session.get(Baivietphai.class, id);

        model.addAttribute("Baivietphai", Baivietphai);
        model.addAttribute("Baivietphais", getBaivietphai());
        return "Baivietphai";
    }

    @ModelAttribute("Baivietphais")
    @SuppressWarnings("unchecked")
    public List<Baivietphai> getBaivietphai() {
        Session session = factory.openSession();
        String hql = "FROM Baivietphai";
        Query query = session.createQuery(hql);
        List<Baivietphai> list = query.list();
        return list;
    }
}
