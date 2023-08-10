package ra.productcrud.controller;

import ra.productcrud.model.Product;
import ra.productcrud.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "ProductController", value = "/ProductController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10
)

public class ProductController extends HttpServlet {
    protected ProductService productService;

    @Override
    public void init() throws ServletException {
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            displayProducts(productService.findAll(), request, response);
        } else {
            switch (action) {
                case "GETALL":
//                    displayHomePage(productService.findAll(),request,response);
                    break;
                case "CREATE":
                    request.getRequestDispatcher("/WEB-INF/newProduct.jsp").forward(request, response);
                    break;
                case "DETAIL":
                    Long id = Long.valueOf(request.getParameter("id"));
                    Product p = productService.findById(id);
//                    System.out.println(p.getName());
                    request.setAttribute("product",p);
                    request.getRequestDispatcher("/WEB-INF/detailProduct.jsp").forward(request, response);
                    break;
                case "DELETE":
                    //lấy  ra id cần xoá
                    long idDel = Integer.parseInt(request.getParameter("id"));
                    productService.delete(idDel);
                    break;
                case "EDIT":
                    long idEdit = Integer.parseInt(request.getParameter("id"));
                    Product product = productService.findById(idEdit);
                    request.setAttribute("product", product);
                    request.getRequestDispatcher("/WEB-INF/editProduct.jsp").forward(request, response);
                    break;
                case "SEARCH":
                    String searchName = request.getParameter("search-name");
                    String sort = request.getParameter("sort");
                    String by = request.getParameter("by");
                    // loc dữ liêu cần tìm kiếm
                    List<Product> listSearch = searchAndSort(searchName, sort, by);
                    request.setAttribute("search-name", searchName);
                    request.setAttribute("sort", sort);
                    request.setAttribute("by", by);
                    displayProducts(listSearch, request, response);
                    break;
            }
            displayProducts(productService.findAll(), request, response);
        }
    }

    protected void displayProducts(List<Product> products, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("products", products);
        request.getRequestDispatcher("/WEB-INF/listProducts.jsp").forward(request, response);
    }

    protected void displayHomePage(List<Product> lists, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("products", lists);
        request.getRequestDispatcher("/view/homePage.jsp").forward(request, response);
    }

    protected List<Product> searchAndSort(String name, String sort, String by) {
        // lọc dữ liệu
        List<Product> listSearch = new ArrayList<>();
        for (Product p : productService.findAll()) {
            if (p.getName().toLowerCase().contains(name.toLowerCase())) {
                listSearch.add(p);
            }
        }
        // sắp xếp
        switch (sort) {
            case "name":
                if (by.equalsIgnoreCase("ASC")) {
                    listSearch.sort(Comparator.comparing(Product::getName));
                } else {
                    listSearch.sort(Comparator.comparing(Product::getName).reversed());
                }
                break;
            case "price":
                if (by.equalsIgnoreCase("ASC")) {
                    listSearch.sort(Comparator.comparingDouble(Product::getPrice));
                } else {
                    listSearch.sort(Comparator.comparingDouble(Product::getPrice).reversed());
                }
                break;
        }
        return listSearch;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        System.out.println(action);
        if (action != null) {
            switch (action) {
                case "ADD":
                    String name = request.getParameter("name");
                    String des = request.getParameter("des");
                    Double price = Double.valueOf(request.getParameter("price"));
                    int stock = Integer.parseInt(request.getParameter("stock"));
                    Collection<Part> listImageUrl = request.getParts();
                    String avatar = "";
                    List<String> listImageUrls = new ArrayList<>();
                    Date date = new Date();
                    String imagePath = "/Users/buidinhhuan/Documents/BOX-Model4/ProductCRUD/ProducCRUD/src/main/webapp/image";
                    for (Part part : listImageUrl) {
                        // lấy avatar
                        if (part.getName().equals("image")) {
                            //  ghi 1 ảnh vào thư mục chỉ định
                            part.write(imagePath + File.separator + part.getSubmittedFileName());
                            avatar = part.getSubmittedFileName();
                        } else if (part.getName().equals("imageUrls")) {
                            // xử lí nhiều file
                            part.write(imagePath + File.separator + part.getSubmittedFileName());
                            listImageUrls.add(part.getSubmittedFileName());
                        }
                    }

                    Product newProduct = new Product(null, name, des, price, stock, avatar, listImageUrls);
                    productService.save(newProduct);
                    break;
                case "UPDATE":
                    long idNew = Long.parseLong(request.getParameter("id"));
                    String nameNew = request.getParameter("name");
                    String descriptionNew = request.getParameter("des");
                    Double priceNew = Double.parseDouble(request.getParameter("price"));
                    int stockNew = Integer.parseInt(request.getParameter("stock"));
                    String imgNew = request.getParameter("img");
                    boolean statusNew = Boolean.parseBoolean(request.getParameter("status"));
                    productService.save(new Product(idNew, nameNew, descriptionNew, priceNew, stockNew, imgNew, statusNew));
                    break;
            }
            response.sendRedirect("/");
        }
    }
}