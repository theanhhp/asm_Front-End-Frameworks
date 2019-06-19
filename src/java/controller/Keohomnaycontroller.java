/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Keo;
import entity.Tinthethao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author trant
 */
@Transactional
@Controller
@RequestMapping("/Keohomnay")
public class Keohomnaycontroller {
    @Autowired
    SessionFactory factory;
    @RequestMapping()
    public String index(ModelMap model) {
              model.addAttribute("Keohomnay", new Keo());
        model.addAttribute("Keos", getKeo());
        
        return "Keohomnay";
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
