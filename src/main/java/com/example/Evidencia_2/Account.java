package com.example.Evidencia_2;

import Model.Accounts;
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

@WebServlet("/Account/*")
public class Account extends HttpServlet {

    private Connection connection = new Connection();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getPathInfo().substring(1);

        switch (action) {
            case "accountList": {
                try {
                    getAllAccounts(request, response);
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

        String action = request.getPathInfo().substring(1);
        System.out.println(action);
        switch (action) {
            case "new": {
                try {
                    createClient(request, response);
                } catch (SQLException e) {
                    System.out.println("LOGIN ERROR");
                    e.printStackTrace();
                }
            }
            break;

        }

    }

    private void createClient(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        HttpSession session = request.getSession();

        int idClient = (int) session.getAttribute("userId");

        int idAccount = Integer.parseInt(request.getParameter("inputNumCuenta"));
        String accountType = request.getParameter("inputTipoCuenta");
        String ammount = request.getParameter("inputMonto");
        float ammountFloat = (float) Float.parseFloat(ammount);

        Accounts newAccount = new Accounts(idClient, idAccount, accountType, ammountFloat, 0);
        Accounts accountCreated = connection.insertAccount(newAccount);

        response.sendRedirect(request.getContextPath() + "/Menu.jsp");
    }

    private void getAllAccounts(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        int idClient = (int) session.getAttribute("userId");

        List<Accounts> accounts = connection.selectAllAccounts(idClient);

        request.setAttribute("accounts", accounts);

        //response.sendRedirect(request.getContextPath() + "/detalleCuenta.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/detalleCuenta.jsp");
        dispatcher.forward(request, response);

    }

}
