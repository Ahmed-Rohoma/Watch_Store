package gov.iti.jets.presentation.dtos;


import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

public class CartDto {
    // private Map<String, Integer> items;
    private List<Item> items;
    public CartDto() {
        items = new ArrayList<>();
    }

    public void addItem(Item item) {
        items.add(item);
    }
    // public void addItem(String productId, int quantity) {
    //     items.put(productId, quantity);
    // }

    // // public void removeItem(String productId) {
    //     items.remove(productId);
    // }

    // public void updateItem(String productId, int quantity) {
    //     items.put(productId, quantity);
    // }

    public String toJSON() {
        Gson gson = new Gson();
        return gson.toJson(items);
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }


}

// public class Cart extends Product{
//     private Integer quantity;


//     public Cart() {
//     }

//     public Cart(Integer quantity) {
//         this.quantity = quantity;
//     }

//     public Integer getQuantity() {
//         return quantity;
//     }

//     public void setQuantity(Integer quantity) {
//         this.quantity = quantity;
//     }

// }
