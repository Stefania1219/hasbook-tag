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
import java.sql.ResultSet;
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
public class VerEvento extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/ver-evento.jsp");
        List<Evento> listaEventos;
        try {
            listaEventos = todosLosEventos();
            request.setAttribute("eventos", listaEventos);
        } catch (SQLException ex) {
            Logger.getLogger(VerEvento.class.getName()).log(Level.SEVERE, null, ex);
        }
        rd.forward(request, response);
    }
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
        processRequest(request, response);
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
        processRequest(request, response);
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

    private List<Evento> todosLosEventos() throws SQLException {
        Connection conexion = null;
        List<Evento> eventos = new ArrayList<Evento>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hashbook_tag", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM evento");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()) {
                int idevento = resultados.getInt("idevento");
                String nombre = resultados.getString("nombre");
                String imagen = resultados.getString("imagen");
                String hashtag = resultados.getString("hashtag");
                String descripcion = resultados.getString("descripcion");
                Evento e = new Evento();
                e.idCrearEvento = idevento;
                e.nombre = nombre;
                e.imagen = imagen;
                e.hashtag = hashtag;
                e.descripcion = descripcion;
                eventos.add(e);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VerEvento.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(VerEvento.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if(conexion != null && !conexion.isClosed()) {
                conexion.close();
            }
        }
        return eventos;
    }
}
