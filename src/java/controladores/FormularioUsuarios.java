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
import modelos.Usuario;
 /**
 *
 * @author Usuario
 */
public class FormularioUsuarios extends HttpServlet {
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
        
        private void guardarUsuario(String nombre, String correo, String contrasenia) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hashbook_tag", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `hashbook_tag`.`formulariousuarios` "
                    + "(`nombre`, `correo`, `contrasenia`) VALUES (?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, correo);
            ps.setString(3, contrasenia);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
 private List<Usuario> todosLosUsuario() throws SQLException {
        Connection conexion = null;
        List<Usuario> Usuario = new ArrayList<Usuario>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hashbook_tag", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM crearevento");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()) {
                int idFormularioUsuarios = resultados.getInt("idFormularioUsuarios");
                String nombre = resultados.getString("nombre");
                String correo = resultados.getString("correo");
                String contrasenia = resultados.getString("contrasenia");
                Usuario u = new Usuario();
                u.idFormularioUsuarios = idFormularioUsuarios;
                u.nombre = nombre;
                u.correo = correo;
                u.contrasenia = contrasenia;
                Usuario.add(u);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if(conexion != null && !conexion.isClosed()) {
                conexion.close();
            }
        }
        return Usuario;
    }

    private void actualizarUsuario(int idFormularioUsuarios, String nombre, String correo, String contrasenia) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hashbook_tag", "root", "");
            PreparedStatement ps = conexion.prepareStatement("UPDATE `hashbook_tag`.`formulariousuarios` SET `nombre` = ?, "
                    + "`correo` = ?, `contrasenia` = ? WHERE `idFormularioUsuarios` = ?");
            ps.setInt(1, idFormularioUsuarios);
            ps.setString(2, nombre);
            ps.setString(3, correo);
            ps.setString(4, contrasenia);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
}
