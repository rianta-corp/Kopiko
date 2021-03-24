/**
 * 
 */
package com.kopiko.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopiko.entity.Product;
import com.kopiko.model.Cart;
import com.kopiko.service.IProductService;

/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:21:36
 * Giỏ hàng
 */

@Controller
@RequestMapping("/checkout/cart")
public class CartController {
	@Autowired
	private IProductService productService;
	
	@PostMapping("/add")
	public String addCart(@RequestParam Long productId, @RequestParam Integer quantity, HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        Product product = productService.findByProductId(productId);
        if (product != null) {
            if (cartItems.containsKey(productId)) {
                Cart item = cartItems.get(productId);
                item.setProduct(product);
                item.setQuantity(item.getQuantity() + quantity);
                cartItems.put(productId, item);
            } else {
                Cart item = new Cart();
                item.setProduct(product);
                item.setQuantity(quantity);
                cartItems.put(productId, item);
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartNum", cartItems.size());
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        return "web/search";
	}
	
	public double totalPrice(HashMap<Long, Cart> cartItems) {
        int count = 0;
        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getSalePrice().longValue() * list.getValue().getQuantity();
        }
        return count;
    }
}
