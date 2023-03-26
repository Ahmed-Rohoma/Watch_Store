package gov.iti.jets.persistance.dao;

import java.util.List;
import gov.iti.jets.entity.*;

public interface CategoryDaoInterface {
    public List<Brand> getAllCategories();
    public Brand getCategoryByID(int brandID);
    public boolean addCategory(Brand brand);
    public boolean deleteCategoryById(int brandID);
    public boolean updateCategory(Brand brand);
}
