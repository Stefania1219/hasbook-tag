/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Evento;

/**
 *
 * @author Usuario
 */
public class CrearEvento extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/crear-evento.jsp");
        List<Evento> listaEventos = new ArrayList<Evento>();
        request.setAttribute("eventos", listaEventos);
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/crear-evento.jsp");
        
       
        String nombre = request.getParameter("nombre");
        String imagen = request.getParameter("imagen");
        String hashtag = request.getParameter("hashtag");
        String descripcion = request.getParameter("descripcion");
        
//        if(idCrearEvento == null || idCrearEvento.equals("")){
//            guardarEvento(nombre, imagen, hashtag, descripcion);
//        } else {
//            int idCrearEventoStr = Integer.parseInt((String) idCrearEvento);
//            actualizarImagen((int) idCrearEvento, nombre, imagen, hashtag, descripcion);
//        }
        
        guardarEvento(nombre, imagen, hashtag, descripcion);
        
        List<Evento> listaEventos = new ArrayList<Evento>();
        request.setAttribute("eventos", listaEventos);
        
        rd.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private void guardarEvento(String nombre, String imagen, String hashtag, String descripcion) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hashbook_tag", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `hashbook_tag`.`crearevento` (`nombre`, `imagen`, `hashtag`, `descripcion` ) VALUES (?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, hashtag);
            ps.setString(4, descripcion);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CrearEvento.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CrearEvento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void actualizarImagen(int idCrearEvento, String nombre, String imagen, String hashtag, String descripcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
