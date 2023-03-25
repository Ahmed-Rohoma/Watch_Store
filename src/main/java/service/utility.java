package service;

import java.util.List;

import entity.Brand;

public class utility {

    public static int getBrandID(List<Brand> brands, String brandName) {
        for (Brand brand : brands) {
            if (brand.getBrandName().equals(brandName))
                return brand.getId();
        }
        return 0;
    }
}
