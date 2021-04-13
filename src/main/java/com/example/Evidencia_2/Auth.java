package com.example.Evidencia_2;

import Model.Clients;
import Model.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Auth/*")
public class Auth extends HttpServlet {
    private Connection connection = new Connection();



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getPathInfo().substring(1);

        switch (action) {
            case "login": {
                try {
                    getClient(request,response);
                } catch (SQLException e) {
                    System.out.println("LOGIN ERROR");
                    e.printStackTrace();
                }
            }
            break;
            
            case "register":{
                try {
                    createClient(request,response);
                } catch (SQLException e) {
                    System.out.println("REGISTER ERROR");
                    e.printStackTrace();
                }
            }
            break;

        }

    }

    private void getClient(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        
        String usernameValue = request.getParameter("inputUsuario");
        String userPassword = (String) request.getParameter("inputContraseña");
        
        Clients client = connection.getUserFromDB(usernameValue);
        HttpSession session = request.getSession();
        
        if(userPassword.equals(client.getPassword())){
            request.setAttribute("userId", client.getIdClient());
            session.setAttribute("userId", client.getIdClient());
            response.sendRedirect(request.getContextPath()+ "/Menu.jsp");
        }else{
            System.out.println("NO SON IGUALES");
            response.sendRedirect(request.getContextPath());
        }
        
    }
    
    private void createClient(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String username = request.getParameter("inputUsername");
        String nombre = request.getParameter("inputNombre");
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        String apellidoPat = request.getParameter("inputApellidoPaterno");
        String apellidoMat = request.getParameter("inputApellidoMaterno");
        String address = request.getParameter("inputDireccion");
        String zipCode = request.getParameter("inputCP");
        String state = request.getParameter("inputEstado");
        String country = request.getParameter("inputPais");
        String phone = request.getParameter("inputTelefono");
        String city = request.getParameter("inputCiudad");
        String birthDate = request.getParameter("inputFechaNac");
        String lastname = apellidoPat + " " + apellidoMat;
        
        HttpSession session = request.getSession();
        
        Clients newClient = new Clients(0,username, nombre, lastname, address, zipCode, city, state, country, phone, birthDate, email, password);
        
        Clients clientCreated = connection.insertClient(newClient);
        request.setAttribute("userId", clientCreated.getIdClient());
        session.setAttribute("userId", clientCreated.getIdClient());
        
        System.out.println(request.getAttribute("userId"));
        response.sendRedirect(request.getContextPath()+ "/Menu.jsp");
        
        
    }

}
