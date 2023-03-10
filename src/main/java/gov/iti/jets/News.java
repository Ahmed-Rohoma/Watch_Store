//package gov.iti.jets;
//
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//import java.util.List;
//
//
//public class News extends HttpServlet {
//
//    @Override
//    public void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        response.setContentType("text/event-stream");
//        response.setCharacterEncoding("UTF-8");
//        PrintWriter out = response.getWriter();
//        System.out.println("welcome from servlet");
//
//        List<Product> pro = new ArrayList<>();
//        pro.add(new Product(0, "MyWatch1", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch2", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch3", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch4", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch1", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch2", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch3", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch4", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch1", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch2", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch3", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//        pro.add(new Product(0, "MyWatch4", "default-2.jpg", 2220, 4, true,
//                5, "description"));
//
//        Gson gson = new Gson();
//        String msg = gson.toJson(pro);
//        System.out.println(" " + msg);
//
//        out.write(msg);
//        out.flush();
//        out.close();
//    }
//
//    @Override
//    public void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//    }
//
//}
