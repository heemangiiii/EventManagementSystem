package com.event;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/addevent")
public class AddEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String date = request.getParameter("date");
        String location = request.getParameter("location");

        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO events (title, description, date, location) VALUES (?, ?, ?, ?)");
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setString(3, date);
            ps.setString(4, location);

            int i = ps.executeUpdate();
            if (i > 0) {
                response.sendRedirect("admin_dashboard.jsp");
            } else {
                out.println("<h3>Failed to add event.</h3>");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
