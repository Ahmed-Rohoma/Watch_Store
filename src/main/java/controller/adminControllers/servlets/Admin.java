package controller.adminControllers.servlets;

import java.io.IOException;
import java.util.List;

import Dao.ProductDAOImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Product;

@WebServlet("/ProductServlet")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProductDAOImp productDAO;

	public Admin() {
		productDAO = new ProductDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve all products from the database
		List<Product> products = productDAO.getAllProducts();

		// Set attributes for the JSP file to use
		request.setAttribute("products", products);

		// Forward the request to the JSP file
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the action parameter from the form
		String action = request.getParameter("action");

		// Perform the appropriate action based on the action parameter
		switch (action) {
			case "add":
				addProduct(request, response);
				break;
			case "edit":
				editProduct(request, response);
				break;
			case "delete":
				deleteProduct(request, response);
				break;
			default:
				showError(request, response, "Invalid action");
				break;
		}
	}

	private void addProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the product information from the form
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		String imageUrl = request.getParameter("imageUrl");

		// Create a new product object
		Product product = new Product(name, description, price, imageUrl);

		// Add the product to the database
		boolean success = productDAO.addProduct(product);

		// Display success or error message to the user
		if (success) {
			showMessage(request, response, "Product added successfully");
		} else {
			showError(request, response, "Failed to add product");
		}
	}

	private void editProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the product information from the form
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		String imageUrl = request.getParameter("imageUrl");

		// Create a new product object
		Product product = new Product(id, name, description, price, imageUrl);

		// Update the product in the database
		boolean success = productDAO.updateProduct(product);

		// Display success or error message to the user
		if (success) {
			showMessage(request, response, "Product updated successfully");
		} else {
			showError(request, response, "Failed to update product");
		}
	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the product ID from the form
		int id = Integer.parseInt(request.getParameter("id"));

		// Delete the product from the database
		boolean success = productDAO.deleteProductById(id);

		// Display success or error message to the user
		if (success) {
			showMessage(request, response, "Product deleted successfully");
		} else {
			showError(request, response, "Failed to delete product");
		}
	}

	private void showMessage(HttpServletRequest request, HttpServletResponse response, String message)
			throws ServletException, IOException {
		// Set the message as a request attribute
		request.setAttribute("message", message);

		// Forward the request to the JSP file
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	private void showError(HttpServletRequest request, HttpServletResponse response, String message)
			throws ServletException, IOException {
		// Set the error message as a request attribute
		request.setAttribute("errorMessage", message);

		// Forward the request to the JSP file
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}