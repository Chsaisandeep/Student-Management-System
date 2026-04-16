package com.gqt;


import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
@WebServlet("/SaveRecord")
public class SaveRecord extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Taking data from frontend (JSP form)
        int sid = Integer.parseInt(request.getParameter("sid"));
        String name = request.getParameter("fn");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String course = request.getParameter("course");
        float amount = Float.parseFloat(request.getParameter("amount"));

        // Creating Student object
        Student s = new Student();
        s.setSid(sid);
        s.setName(name);
        s.setGender(gender);
        s.setCity(city);
        s.setCourse(course);
        s.setAmount(amount);

        // Hibernate code (saving into database)
        SessionFactory sf = new Configuration().configure().buildSessionFactory();

        Session session = sf.openSession();

        session.beginTransaction();
        session.save(s);
        session.getTransaction().commit();
        session.close();

        // Redirect to success page
        response.sendRedirect(request.getContextPath() + "/Save.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
