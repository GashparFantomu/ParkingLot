package org.example.parkinglot.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.parkinglot.entities.Car;

import java.io.IOException;

@WebServlet(name = "AddCar", value = "/AddCar")
public class AddCar {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/addCar.jsp").forward(request, response);

    }
}
