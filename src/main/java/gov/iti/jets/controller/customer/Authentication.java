package gov.iti.jets.controller.customer;

import java.io.IOException;

import gov.iti.jets.entity.User;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

@WebServlet("/auth")
public class Authentication extends HttpServlet {

    ServletConfig servletConfig;
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        servletConfig = config;
    }

    public static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myPersistenceUnit");
    public static EntityManager entityManager = entityManagerFactory.createEntityManager();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("auth").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("Enterd email : " + email + " & password : " + password);


        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> userCriteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = userCriteriaQuery.from(User.class);
        userCriteriaQuery.select(userRoot)
                .where(criteriaBuilder.and(criteriaBuilder.equal(userRoot.get("email"), email),
                        criteriaBuilder.equal(userRoot.get("password"), password)));

        System.out.println("Before Try..");

        User userResult = null;
        try {
            userResult = entityManager.createQuery(userCriteriaQuery).getSingleResult();
            System.out.println("After Try..");

            ServletContext context = servletConfig.getServletContext();
            context.setAttribute("error", false);

            System.out.println("User email : " + userResult.getEmail() + " & password : " + userResult.getPassword());

            System.out.println("Right email & Password");

            // session
            // HttpSession session = request.getSession(true);
            // session.setAttribute("","");
    
            if (request.getParameter("remember") != null) {
                System.out.println(request.getParameter("remember") + "rememberrrr");
                Cookie emailCookie = new Cookie("userEmail", email);
                Cookie passwordCookie = new Cookie("password", password);
                response.addCookie(emailCookie);
                response.addCookie(passwordCookie);
            }
            if (userResult.getIsAdmin() == 1) {
                System.out.println("Admin....");
                request.getRequestDispatcher("getnews").forward(request, response);
            } else {
                System.out.println("User....");
                request.getRequestDispatcher("getnews").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Invalid email || Password");            
            ServletContext context = servletConfig.getServletContext();
            context.setAttribute("error", true);
            request.getRequestDispatcher("views/login.jsp").forward(request, response);
        }

    }

}
