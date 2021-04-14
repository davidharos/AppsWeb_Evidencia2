/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Evidencia_2;

import Model.Clients;
import Model.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Client/*")
public class Client extends HttpServlet {

    private Connection connection = new Connection();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getPathInfo().substring(1);

        switch (action) {
            case "clientList": {
                try {
                    getAllClients(request, response);
                } catch (SQLException e) {
                    System.out.println("LOGIN ERROR");
                    e.printStackTrace();
                }
            }
            break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void getAllClients(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");

        List<Clients> clients = connection.selectAllClients();

        for (Clients temp : clients) {
            System.out.println(temp.getIdClient());
        }

        request.setAttribute("clients", clients);

        //response.sendRedirect(request.getContextPath() + "/detalleCuenta.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/clientes.jsp");
        dispatcher.forward(request, response);

    }
}
