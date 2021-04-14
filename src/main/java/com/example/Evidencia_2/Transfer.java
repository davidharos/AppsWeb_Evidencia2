package com.example.Evidencia_2;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Transfer", value = "/Transfer-servlet")
public class Transfer extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");




    }


    public void destroy() {
    }
}