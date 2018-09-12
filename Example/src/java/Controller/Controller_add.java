/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Conectar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Jesús Mendoza
 */
public class Controller_add {
    private JdbcTemplate jdbc;
    public Controller_add() {
        Conectar con = new Conectar();
        this.jdbc = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("add.htm") //1  
    public ModelAndView controlador_add(HttpServletRequest request/*2*/ ){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("add");
        return mav;
    }
 
    @RequestMapping("add_post.htm") //1  
    public ModelAndView agrega(HttpServletRequest request/*2*/ ){
        String nombre = request.getParameter("nombre");
        String empresa = request.getParameter("empresa");
        String lanzamiento = request.getParameter("lanzamiento");
        String categoria = request.getParameter("categoria");
     
        System.out.println("DATOS ADD  "+nombre);
     
        String sql_insert = "insert into Juegos (nombre,empresa,lanzamiento,categoria)values ('"+nombre+"','"+empresa+"','"+lanzamiento+"','"+categoria+"')";
        this.jdbc.execute(sql_insert);
    
        String sql="select * from Juegos;";
        //Procesa la consulta para almacenar los resultados en una lista, con el fin de pasar los valores mediante Mav a la vista.
        List datos=this.jdbc.queryForList(sql);
     
        System.out.println("DATOS  "+datos);
        ModelAndView mav=new ModelAndView();
        mav.addObject("juegos", datos);
        return new ModelAndView("redirect:/home.htm");    
    } 
 
}
