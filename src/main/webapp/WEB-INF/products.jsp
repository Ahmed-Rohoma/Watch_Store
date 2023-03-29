<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>


    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <title>Product Page - Admin</title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
      <!-- https://fonts.google.com/specimen/Roboto -->
      <link rel="stylesheet" href="css/fontawesome.min.css" />
      <!-- https://fontawesome.com/ -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- https://getbootstrap.com/ -->
      <link rel="stylesheet" href="css/templatemo-style.css">
      <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
    </head>

    <body id="reportsPage" onload="getProducts()">
      <nav class="navbar navbar-expand-xl">
        <div class="container h-100">
          <a class="navbar-brand" href="${request.contextPath}/Admin?path=index">
            <h1 class="tm-site-title mb-0">Watch Store</h1>
          </a>
          <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fas fa-bars tm-nav-icon"></i>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
              <li class="nav-item">
                <a class="nav-link active" href="#">
                  <i class="fas fa-tachometer-alt"></i>
                  Dashboard
                  <span class="sr-only">(current)</span>
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="${request.contextPath}/Admin?path=products">
                  <i class="fas fa-shopping-cart"></i>
                  Products
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="${request.contextPath}/Admin?path=accounts">
                  <i class="far fa-user"></i>
                  Accounts
                </a>
              </li>
            </ul>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link d-block" href="${request.contextPath}/Admin?path=logout">
                  Admin, <b>Logout</b>
                </a>
              </li>
            </ul>
          </div>
        </div>

      </nav>
      <div class="container mt-5">
        <div class="row tm-content-row">
          <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-products">
              <div class="tm-product-table-container">
                <table class="table table-hover tm-table-small tm-product-table">
                  <thead>
                    <tr>
                      <th scope="col">&nbsp;</th>
                      <th scope="col">PRODUCT NAME</th>
                      <th scope="col">UNIT Price</th>
                      <th scope="col">IN STOCK</th>
                      <th scope="col">Brand Name</th>
                      <th scope="col">&nbsp;</th>
                    </tr>
                  </thead>
                  <tbody id="products_table_tbody">

                  </tbody>
                </table>
              </div>
              <!-- table container -->
              <a href="${request.contextPath}/Admin?path=add-product" class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
            </div>
          </div>
          <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
              <h2 class="tm-block-title">Product Categories</h2>
              <div class="tm-product-table-container">
                <table class="table tm-table-small tm-product-table">
                  <tbody id="brands_table_tbody">

                  </tbody>
                </table>
              </div>
              <!-- table container -->
              <a href="${request.contextPath}/Admin?path=add-brand" class="btn btn-primary btn-block text-uppercase mb-3">Brand Settings</a>

            </div>
          </div>
        </div>
      </div>
      <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
          </p>
        </div>
      </footer>

      <script src="js/jquery-3.3.1.min.js"></script>
      <!-- https://jquery.com/download/ -->
      <script src="js/bootstrap.min.js"></script>
      <!-- https://getbootstrap.com/ -->
      <script>

        var brands;
        var products;

        function getProducts() {

          console.log("========== GetProducts Function ==================");


          $.get("/adminProducts", function (data) {
            console.log("back from servlet");
            var pageData = JSON.parse(data);
            console.log(pageData);
            products = pageData.products;
            var tbodyData = '';

            getBrands(pageData);

            console.log("Test method ===> " + getBrandbyID(1));

            // Loop through the products array and add a row for each product
            $.each(products, function (index, product) {
              // <th scope="row"><input type="checkbox" /></th>
              tbodyData += `<tr>
                  <td>
                    <a class="tm-product-edit-link" onClick="updateProduct(`+ product.productId + `)">
                      <i class="far fa-edit tm-product-edit-icon"></i>
                    </a>
                  </td>
                  <td class="tm-product-name">`+ product.productName + `</td>
                  <td>`+ product.price + `</td>
                  <td>`+ product.quantity + `</td>
                  <td>`+ getBrandbyID(product.brandId) + `</td>
                  <td>
                    <a class="tm-product-delete-link" onClick="deleteProduct(`+ product.productId + `)">
                      <i class="far fa-trash-alt tm-product-delete-icon"></i>
                    </a>
                  </td>
                </tr>`
            });

            $('#products_table_tbody').html(tbodyData);

          });

        }

        function getBrands(pageData) {

          console.log("========== GetBrands Function ==================");

          brands = pageData.brands;
          console.log(brands);
          var tbodyData = '';

          // Loop through the products array and add a row for each product
          $.each(brands, function (index, brand) {
            // <th scope="row"><input type="checkbox" /></th>
            tbodyData += `<tr>
                  <td class="tm-product-name">` + brand.brandName + `</td>
                  <td class="text-center">
                    <a href="#" class="tm-product-delete-link" onClick="deleteBrand(`+ brand.id + `)">
                      <i class="far fa-trash-alt tm-product-delete-icon"></i>
                    </a>
                  </td>
                </tr>`
          });

          $('#brands_table_tbody').html(tbodyData);

        }

        function getBrandbyID(id) {
          console.log("======================");
          console.log("id : " + id);
          console.log("======================");

          for (const brand of brands) {
            if (brand.id === id) {
              return brand.brandName;
            }
          }

        }


        function deleteBrand(id) {

          console.log("deleting Brand with id : " + id);

          // productId="${product.productId}"

          $.ajax({
            url: '/deleteBrand',
            type: 'POST',
            data: {
              brandId: id
            },
            success: function (result) {
              console.log("Success Function =========================");
              refreshContent();
            },
            error: function (xhr, status, error) {
              console.log("Error Function =========================")

            }
          });
        }

        function deleteProduct(id) {

          console.log("deleting product with id : " + id);

          // productId="${product.productId}"

          $.ajax({
            url: '/deleteProduct',
            type: 'POST',
            data: {
              productId: id
            },
            success: function (result) {
              console.log("Success Function =========================");
              refreshContent();
            },
            error: function (xhr, status, error) {
              console.log("Error Function =========================")

            }
          });
        }

        function updateProduct(id) {
          console.log("updating product with id : " + id);
          window.location.href = "${request.contextPath}/Admin?path=edit-product&productId=" + id;
        }

        function refreshContent() {
          getProducts();
        }

      </script>
    </body>

    </html>