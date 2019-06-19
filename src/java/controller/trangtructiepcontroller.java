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
@RequestMapping("/Trangtructiep")
public class trangtructiepcontroller {
       @Autowired
    SessionFactory factory;
    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("Trangtructiep", new Tructiep());
        model.addAttribute("Tructieps", getTructiep());
        return "Trangtructiep";
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
