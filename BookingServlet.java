package com.event;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);
        String userEmail = (String) session.getAttribute("userEmail");
        int eventId = Integer.parseInt(request.getParameter("eventId"));

        if (userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            Connection conn = DBConnection.getConnection();

            PreparedStatement ps1 = conn.prepareStatement("SELECT id FROM users WHERE email = ?");
            ps1.setString(1, userEmail);
            ResultSet rs = ps1.executeQuery();
            int userId = -1;
            if (rs.next()) {
                userId = rs.getInt("id");
            }

            PreparedStatement ps2 = conn.prepareStatement("INSERT INTO registrations(user_id, event_id) VALUES (?, ?)");
            ps2.setInt(1, userId);
            ps2.setInt(2, eventId);

            int i = ps2.executeUpdate();
            if (i > 0) {
                request.setAttribute("userEmail", userEmail);
                request.setAttribute("userId", userId);
                request.getRequestDispatcher("confirmation.jsp").forward(request, response);
            } else {
                out.println("<h3>Could not register for event.</h3>");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
