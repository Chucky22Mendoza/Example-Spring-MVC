/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Conectar;
import Model.Juego;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Jesús Mendoza
 */
public class Controller_update {
    private JdbcTemplate jdbc;
    public Controller_update() {
        Conectar con = new Conectar();
        this.jdbc = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView controlador(HttpServletRequest request/*2*/ ){
        ModelAndView mav = new ModelAndView();
        int id=Integer.parseInt(request.getParameter("id"));
        Juego datos = this.select(id);
        
        mav.setViewName("update");
        mav.addObject("juegos",new Juego(1,datos.getNombre(),datos.getEmpresa(),datos.getLanzamiento(),datos.getCategoria()));
        return mav;
    }
    
    @RequestMapping(method=RequestMethod.POST) //1  
    public ModelAndView controlador_update(
                                        @ModelAttribute("juegos") Juego a,
                                        BindingResult result,
                                        SessionStatus status,
                                        HttpServletRequest request
                                        ){
        int id=Integer.parseInt(request.getParameter("id"));
        this.jdbc.update("update Juegos set nombre=?, empresa=?, lanzamiento=?, categoria=? where id=?", a.getNombre(),a.getEmpresa(),a.getLanzamiento(),a.getCategoria(),id);
        return new ModelAndView("redirect:/home.htm");
    }
    
    public Juego select(int id){
     
        final Juego game = new Juego();
        String sql="select * from Juegos where id="+id+";";
        return (Juego) jdbc.query(sql, new ResultSetExtractor<Juego>(){
            public Juego extractData(ResultSet rs)throws SQLException,DataAccessException{
             
                if(rs.next()){
                    game.setNombre(rs.getString("nombre"));
                    game.setEmpresa(rs.getString("empresa"));
                    game.setLanzamiento(rs.getString("lanzamiento"));
                    game.setCategoria(rs.getString("categoria"));
                
                } 
                return game;   
            }
        });
     
 }
}
