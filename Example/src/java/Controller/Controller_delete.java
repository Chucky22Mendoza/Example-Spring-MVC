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
public class Controller_delete {
    private JdbcTemplate jdbc;
    public Controller_delete() {
        Conectar con = new Conectar();
        this.jdbc = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("delete.htm") //1  
    public ModelAndView controlador(HttpServletRequest request/*2*/ ){
        String id = request.getParameter("id");
     
        String SQL_DELETE = "delete from Juegos where id="+id;
        this.jdbc.execute(SQL_DELETE);
     
        String sql = "select * from Juegos;";
        //Procesa la consulta para almacenar los resultados en una lista, con el fin de pasar los valores mediante Mav a la vista.
        List datos=this.jdbc.queryForList(sql);
     
        System.out.println("DATOS  "+datos);
        ModelAndView mav = new ModelAndView();
        mav.addObject("juegos", datos);
        return new ModelAndView("redirect:/home.htm");
    }  
}
