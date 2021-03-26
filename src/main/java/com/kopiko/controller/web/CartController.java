/**
 * 
 */
package com.kopiko.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopiko.converter.ProductShowListConverter;
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
	
	@Autowired
	private ProductShowListConverter productShowListConverter;
	
	@PostMapping("/add/{productId}")
	public String addCart(@PathVariable Long productId, @RequestParam(required = false) String size, @RequestParam(required = false) Integer quantity, HttpSession session, HttpServletRequest request) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        Product product = productService.findByProductId(productId);
        if (product != null) {
        	Cart item;
            if (cartItems.containsKey(productId)) item = cartItems.get(productId);
            else {
            	item = new Cart();
            	item.setQuantity(0);
            }
            item.setProduct(productShowListConverter.toDTO(product));
            if(size != null && !size.isEmpty()) item.setSize(size);
            else {
            	if(product.getListProductDetail().get(0) != null) item.setSize(product.getListProductDetail().get(0).getSize());
            	else item.setSize("Mặc định");
            }
            if(quantity != null) item.setQuantity(item.getQuantity() + quantity);
            else item.setQuantity(1);
            cartItems.put(productId, item);
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartNum", cartItems.size());
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
	}
	
	@PostMapping("/update/{productId}")
	public String updateCart(@PathVariable Long productId, @RequestParam Integer quantity, HttpSession session, HttpServletRequest request) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        Product product = productService.findByProductId(productId);
        if (product != null) {
        	Cart item;
            if (cartItems.containsKey(productId)) item = cartItems.get(productId);
            else {
            	item = new Cart();
            	item.setQuantity(0);
            }
            item.setProduct(productShowListConverter.toDTO(product));
            if(quantity != null) item.setQuantity(quantity);
            else item.setQuantity(1);
            cartItems.put(productId, item);
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartNum", cartItems.size());
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
	}
	
	public double totalPrice(HashMap<Long, Cart> cartItems) {
        int count = 0;
        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getSalePrice().longValue() * list.getValue().getQuantity();
        }
        return count;
    }
	
	@GetMapping(value = "/view")
    public String viewCart(ModelMap mm, HttpSession session) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        String username = (String)session.getAttribute("username");
        //TODO: lấy use ra để push lên
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartNum", cartItems.size());
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        return "web/cart";
    }

    @GetMapping(value = "remove/{productId}")
    public String viewRemove(ModelMap mm, HttpSession session, @PathVariable("productId") long productId, HttpServletRequest request) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        if (cartItems.containsKey(productId)) {
            cartItems.remove(productId);
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
}
