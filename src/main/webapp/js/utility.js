function populateBrands() {

    console.log("======= populateBrands ===========");

    $.ajax({
        url: '/addProduct',
        type: 'GET',
        success: function (result) {
            console.log("Success Function =========================");
            console.log(result);
            var brands = JSON.parse(result);
            console.log("brands in popBrand : "+brands +"\n=========");

            return brands;
        },
        error: function (xhr, status, error) {
            console.log("Error Function =========================")
        }
    });
}

function fillBrandInOptions(brands) {
    // get the select element by its ID
    var selectElement = document.getElementById('brand');

    console.log("fill Brand in add product");
    // populate the options of the select element from the 'brands' array
    for (var i = 0; i < brands.length; i++) {
        var optionElement = document.createElement('option');
        console.log(brands[i]);
        optionElement.value = brands[i].brandName;
        optionElement.text = brands[i].brandName;
        selectElement.appendChild(optionElement);
    }
}

