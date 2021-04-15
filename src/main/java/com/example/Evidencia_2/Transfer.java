package com.example.Evidencia_2;

import java.io.*;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import Model.Accounts;
import Model.Connection;
import Model.Transfers;


@WebServlet(name = "Transfer", value = "/Transfer-servlet")
public class Transfer extends HttpServlet {

    //Se invoca la conección a la base de datos
    private Connection connection = new Connection();

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");


        //Traerse a las cuentas con el query
        int id = (int) request.getAttribute("userId");

        //Se guardan los resultados en una lista llamada Accounts
        List<Accounts> accounts = connection.selectAllTrasferableAccounts(id);


    }


    public void destroy() {
    }
}