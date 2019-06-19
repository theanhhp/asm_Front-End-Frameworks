/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import entity.Baivietphai;
import entity.Hanggiua;
import entity.Tinthethao;
import entity.XepHang;
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
@RequestMapping("/index")
public class Databasetrangchu {
    @Autowired
    SessionFactory factory;
    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("index", new Tinthethao());
        model.addAttribute("Tinthethaos", getTinthethao());
         model.addAttribute("XepHangs", getXepHang());
           model.addAttribute("BaivietphaiS", getBaivietphai());
//         model.addAttribute("Hanggiuas", getHanggiua());
        return "index";
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
//    ----------------------------------------------      
    @ModelAttribute("XepHangs")
    @SuppressWarnings("unchecked")
    public List<XepHang> getXepHang() {
        Session session = factory.openSession();
        String hql = "FROM XepHang";
        Query query = session.createQuery(hql);
        List<XepHang> list = query.list();
        return list;
    }
    //    ---------------------------------------------- 
    @ModelAttribute("Hanggiuas")
    @SuppressWarnings("unchecked")
    public List<Hanggiua> getHanggiua() {
        Session session = factory.openSession();
        String hql = "FROM Hanggiua";
        Query query = session.createQuery(hql);
        List<Hanggiua> list = query.list();
        return list;
    }  
     //    ---------------------------------------------- 
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
