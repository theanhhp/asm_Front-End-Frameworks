/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import entity.Tinthethao;
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
@RequestMapping("/Tinthethao")
public class Tinthethaocontroller {
     @Autowired
    SessionFactory factory;

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Tinthethao", new Tinthethao());
        model.addAttribute("Tinthethaos", getTinthethao());
        return "Tinthethao";
    }
    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @ModelAttribute("Tinthethao") Tinthethao Tinthethao) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(Tinthethao);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Tinthethaos", getTinthethao());
        return "Tinthethao";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, @ModelAttribute("Tinthethao") Tinthethao Tinthethao) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(Tinthethao);
            t.commit();
            model.addAttribute("message", "Cập nhật thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Cập nhật thành công  !");
        } finally {
            session.close();
        }
        model.addAttribute("Tinthethaos", getTinthethao());
        return "Tinthethao";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model, Tinthethao Tinthethao) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.delete(Tinthethao);
            t.commit();
            model.addAttribute("message", "Xóa thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Xóa thất bại !");
        } finally {
            session.close();
        }
        model.addAttribute("Tinthethao", new Tinthethao());
        model.addAttribute("Tinthethaos", getTinthethao());
        return "Tinthethao";
    }

    @RequestMapping("{id}")
    public String edit(ModelMap model, @PathVariable("id") Integer id) {
        Session session = factory.openSession();
        Tinthethao Tinthethao = (Tinthethao)session.get(Tinthethao.class, id);

        model.addAttribute("Tinthethao", Tinthethao);
        model.addAttribute("Tinthethaos", getTinthethao());
        return "Tinthethao";
    }
   @ModelAttribute("Tinthethaos")
    @SuppressWarnings("unchecked")
    public List<Tinthethao> getTinthethao() {
        Session session = factory.openSession();
        String hql = "FROM Tinthethao";
        Query query = session.createQuery(hql);
        List<Tinthethao> list = query.list();
        return list;
    }
   
   
}
