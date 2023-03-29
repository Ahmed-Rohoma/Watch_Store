<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <title>Add Product - Dashboard </title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
      <!-- https://fonts.google.com/specimen/Roboto -->
      <link rel="stylesheet" href="css/fontawesome.min.css" />
      <!-- https://fontawesome.com/ -->
      <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
      <!-- http://api.jqueryui.com/datepicker/ -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- https://getbootstrap.com/ -->
      <link rel="stylesheet" href="css/templatemo-style.css">
      <script src="js/utility.js"></script>
      <!--
	Watch Store CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
    </head>

    <body onload="populateBrands()">
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
      <div class="container tm-mt-big tm-mb-big">
        <div class="row">
          <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
              <div class="row">
                <div class="col-12">
                  <h2 class="tm-block-title d-inline-block">Add Product</h2>
                </div>
              </div>
              <div class="row tm-edit-product-row">
                <div class="col-xl-6 col-lg-6 col-md-12">
                  <form action="addProduct" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                    <div class="form-group mb-3">
                      <label for="name">Product Name
                      </label>
                      <input id="productName" name="name" type="text" class="form-control validate" required />
                    </div>
                    <div class="form-group mb-3">
                      <label for="description">Description</label>
                      <textarea class="form-control validate" rows="3" required id="productDescription"
                        name="description"></textarea>
                    </div>
                    <div class="form-group mb-3">
                      <label for="brand">Select Brand</label>
                      <select class="custom-select tm-select-accounts" id="brand" name="selectedBrand">
                        <option value="">Select Brand</option>
                      </select>
                    </div>
                    <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                        <label for="price">Product Price
                        </label>
                        <input id="productPrice" name="price" type="number" class="form-control validate"
                          data-large-mode="true" />
                      </div>
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                        <label for="stock">Units In Stock
                        </label>
                        <input id="productQuantity" name="quantity" type="number" class="form-control validate"
                          required />
                      </div>
                    </div>

                </div>
                <!-- <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
              <div class="tm-product-img-dummy mx-auto">
                <img id="productImg" src="path/to/image.jpg" alt="Product Image" width="100%">
                <i class="fas fa-cloud-upload-alt tm-upload-icon"
                  onclick="document.getElementById('fileInput').click();"></i>
              </div>
              <div class="custom-file mt-3 mb-3">
                <input id="fileInput" type="file" name="image" style="display:none;" />
                <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE"
                  onclick="document.getElementById('fileInput').click();" />
              </div>
            </div> -->

                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                  <div class="tm-product-img-dummy mx-auto">
                    <img id="productImg" src="" alt="" style="width: 100%; height: 100%; object-fit: contain;">
                    <label for="fileInput">
                      <i class="fas fa-cloud-upload-alt tm-upload-icon" style="display:none;"></i>
                    </label>
                    <input id="fileInput" type="file" name="image" style="display:none;"
                      onchange="previewImage(event)" />
                  </div>
                  <div>
                    <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD PRODUCT IMAGE"
                      onclick="document.getElementById('fileInput').click();" />
                  </div>
                </div>



                <div class="col-12">
                  <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
                </div>
                </form>
              </div>
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
      <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
      <!-- https://jqueryui.com/download/ -->
      <script src="js/bootstrap.min.js"></script>
      <!-- https://getbootstrap.com/ -->
      <script>

        function populateBrands() {

          console.log("======= populateBrands ===========");

          $.ajax({
            url: '/addProduct',
            type: 'GET',
            success: function (result) {
              console.log("Success Function =========================");
              console.log(result);
              var brands = JSON.parse(result);
              console.log("brands in popBrand : " + brands + "\n=========");

              var selectElement = document.getElementById('brand');

              console.log("fill Brand in add product");
              // populate the options of the select element from the 'brands' array
              for (var i = 0; i < brands.length; i++) {
                var optionElement = document.createElement('option');
                console.log(brands[i]);
                optionElement.value = brands[i].id;
                optionElement.text = brands[i].brandName;
                selectElement.appendChild(optionElement);
              }
            },
            error: function (xhr, status, error) {
              console.log("Error Function =========================")
            }
          });
        }

        function previewImage(event) {
          var reader = new FileReader();
          reader.onload = function () {
            var img = document.getElementById("productImg");
            img.src = reader.result;
          };
          reader.readAsDataURL(event.target.files[0]);
        }


        function handleFileSelect(event) {
          const input = event.target;
          if (input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function (e) {
              const img = document.getElementById("productImg");
              img.src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
          }
        }

        const fileInput = document.getElementById("fileInput");
        fileInput.addEventListener("change", handleFileSelect);


        $(function () {
          $("#expire_date").datepicker();
        });
      </script>
    </body>

    </html>