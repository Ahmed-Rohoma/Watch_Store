<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <title>Add Brand - Dashboard </title>
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
          <a class="navbar-brand" href="${request.contextPath}/Admin?path=products">
            <h1 class="tm-site-title mb-0">Tick Tock</h1>
          </a>
          <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fas fa-bars tm-nav-icon"></i>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
              

              <li class="nav-item">
                <a class="nav-link active" href="${request.contextPath}/Admin?path=products">
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
                  <h2 class="tm-block-title d-inline-block">Brand Settings</h2>
                </div>
              </div>
              <div class="row tm-edit-product-row">
                <div class="col-xl-6 col-lg-6 col-md-12">
                  <form action="addBrand" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                    <div class="form-group mb-3">
                      <label for="">Brand Name
                      </label>
                      <input id="brand-name" name="newBrandName" type="text" class="form-control validate" required />
                    </div>

                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                      <span id="fileInputError" style="display:none; color:red;">Please Choose an Image</span>
                      <div class="tm-product-img-dummy mx-auto">
                        <img id="newBrandImg" src="" alt="" style="width: 100%; height: 100%; object-fit: contain;">
                        <label for="fileInput">
                          <i class="fas fa-cloud-upload-alt tm-upload-icon" style="display:none;"></i>
                        </label>
                        <input id="fileInput" type="file" name="image" style="display:none;"
                          onchange="previewImage(event)" required />
                      </div>
                      <div>
                        <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD BRAND IMAGE"
                          onclick="document.getElementById('fileInput').click();" />
                      </div>
                    </div>

                    <div class="col-12">
                      <button type="submit" class="btn btn-primary btn-block text-uppercase">Add New Brand</button>
                    </div>
                  </form>
                </div>
              </div>
              <br><br>
              <div class="row tm-edit-product-row">
                <div class="col-xl-6 col-lg-6 col-md-12">
                  <form action="updateBrand" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                    <div class="form-group mb-3">
                      <label for="">Select Brand To Update</label>
                    </div>
                    <div class="form-group mb-3">
                      <select class="custom-select tm-select-accounts" id="brand" name="selectedBrand">
                        <option value="">Select Brand</option>
                      </select>
                    </div>

                    <div class="form-group mb-3">
                      <label for="">Brand New Name</label>
                      <input id="bName" name="brandName" type="text" class="form-control validate" required />
                    </div>


                    <!-- <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4" >
                      <span id="fileInputError2" style="display:none; color:red;">Please Choose an Image</span>
                      <div class="tm-product-img-dummy mx-auto">
                        <img id="brandImg" src="" alt="" style="width: 100%; height: 100%; object-fit: contain;">
                        <label for="fileInput">
                          <i class="fas fa-cloud-upload-alt tm-upload-icon" style="display:none;"></i>
                        </label>
                        <input id="fileInput2" type="file" name="image" style="display:none;"
                          onchange="previewImage(event)" required />
                      </div>
                      <div>
                        <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD BRAND IMAGE"
                          onclick="document.getElementById('fileInput2').click();" />
                      </div>
                    </div> -->

                    <div class="col-12">
                      <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Brand Name</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
      </div>
      <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2023</b> All rights reserved.
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


        var brands;

        function populateBrands() {

          console.log("======= populateBrands ===========");
          $.ajax({
            url: '/addProduct',
            type: 'GET',
            success: function (result) {
              console.log("Success Function =========================");
              console.log(result);
              brands = JSON.parse(result);
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

        const fileInput = document.getElementById("fileInput");
        // const fileInput2 = document.getElementById("fileInput2");

        const fileInputError = document.getElementById("fileInputError");
        // const fileInputError2 = document.getElementById("fileInputError2");


        fileInput.addEventListener("change", handleFileSelect);
        // fileInput2.addEventListener("change", handleFileSelect2);
        
        fileInput.addEventListener("invalid", function (event) {
          event.preventDefault();
          fileInputError.style.display = "block";
        });

        // fileInput2.addEventListener("invalid", function (event) {
        //   event.preventDefault();
        //   fileInputError2.style.display = "block";
        // });


        function handleFileSelect(event) {
          const input = event.target;
          if (fileInput.value) {
            fileInputError.style.display = "none";
          }
          if (input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function (e) {
              const img = document.getElementById("newBrandImg");
              img.src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
          }
        }

        // function handleFileSelect2(event) {
        //   const input = event.target;
        //   if (fileInput2.value) {
        //     fileInputError2.style.display = "none";
        //   }
        //   if (input.files && input.files[0]) {
        //     const reader = new FileReader();
        //     reader.onload = function (e) {
        //       const img = document.getElementById("brandImg");
        //       img.src = e.target.result;
        //     };
        //     reader.readAsDataURL(input.files[0]);
        //   }
        // }

        const brandSelect = document.getElementById('brand');
        const brandNameInput = document.getElementById('bName');
        const brandImage = document.getElementById("brandImg");

        brandSelect.addEventListener('change', () => {
          brands.forEach(brand => {
            if (brand.id == brandSelect.value) {
              console.log("in if ");
              brandNameInput.value = brand.brandName;
            }
          });

          const imageUrl = "../brandsImage/" + brandNameInput.value;
          const imageExtensions = ['jpg', 'jpeg', 'png', 'gif'];

          imageExtensions.forEach(ext => {
            const img = new Image();
            img.src = imageUrl + "." + ext;
            console.log("ext : " + ext);
            console.log("image " + img.src);
            img.addEventListener('load', () => {
              // Set the image source only if it loads successfully
              brandImage.src = img.src;
            });
          });

        });


      </script>
    </body>

    </html>