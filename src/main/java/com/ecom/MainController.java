package com.ecom;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;





@Controller
public class MainController {
	
	@Autowired
	private MainDao dao;
	
	
	@RequestMapping("/login")
	public String loginPage() {
		return "loginform";
		
	}
	
	@RequestMapping("/register")
	public String registerPage() {
		return "register";
		
	}
	
	@RequestMapping(value="/saveUser",method=RequestMethod.POST)
       public String saveRegModel(@ModelAttribute("rm") RegModel rm,HttpSession session) {
		
		List<RegModel> list=dao.isEmailExist(rm.getEmail());
		
		if(list==null) {
			dao.uploadCategoryImages(rm);
			int status=dao.saveRegModel(rm);
			session.setAttribute("sesreg","Success");
			return "loginform";
		}else {
			session.setAttribute("sesemailexist","Error");
			return "register";
		}
	}
	
	@RequestMapping(value="/loginSubmit",method=RequestMethod.POST)
     public String doLogin(@ModelAttribute("lm") LoginModel lm,HttpSession session) {
		
		List<RegModel> list=dao.doLogin(lm);
		
		if(list==null) {
			session.setAttribute("usernotexist","notexist");
			return"register";
		}else {
			
			RegModel rm=list.get(0);
			// RegModel user = list.get(0);  // here we get id from regModel
			 
			if(lm.getPassword().equals(list.get(0).getPassword())) {
				
				
				
			 session.setAttribute("sesemail", lm.getEmail());
			 session.setAttribute("sesuserid", rm.getId());
		
			// System.out.println("Session email: " + session.getAttribute("sesemail"));
			// System.out.println("Session user ID: " + session.getAttribute("sesuserid"));
			 
				return "redirect:/product";
				
				
			}else {
				
				session.setAttribute("seslog", "failed");
				return"loginform";
			}
		}
		
		}
	
	
  
	@RequestMapping("/base")
	public String basePage() {
		return"base";
	}
	
	
	@RequestMapping("/product")
	public String getProductsAndCategories(Model model, @RequestParam(value="category", defaultValue="") String category) {
	    List<ProductModel> products;

	    if (category.isEmpty()) {
	        // If no category is selected, fetch all products
	        products = dao.getProduct();
	    } else {
	        // If a category is selected, filter products based on that category
	    	int categoryId = Integer.parseInt(category);  // Convert category from String to int
	        products = dao.getProductsByCategory(categoryId);
	    }
	    
	    model.addAttribute("products", products);
	    List<Category> categories = dao.getAllData();
	    model.addAttribute("categories", categories);
	    
	    return "product";
	}

	
	
	
//	@RequestMapping("/product")
//	 public String getProductsAndCategories(Model model, @RequestParam(value="category", defaultValue="") String category) {
//		
//		List<ProductModel>products=dao.getProducts();
//		model.addAttribute("products", products);
//		
//		List<Category> categories=dao.getAllData();
//		
//		 model.addAttribute("categories", categories);
//	       
//      return "product";
//      
//	    }
	
//	@RequestMapping("/category/{id}")
//	public String getProductsByCategory(@PathVariable int id, Model model) {
//	    // Fetch the selected category
//	    Category cat = dao.getCategoryById1(id);
//	    model.addAttribute("cat", cat);
//	    
//	    // Fetch all categories for the sidebar
//	    List<Category> categories = dao.getAllData();
//	    model.addAttribute("categories", categories);
//	    
//	    // Fetch products for the selected category
//	    List<ProductModel> products = dao.getProductsByCategoryId(id); // You need to implement this method
//	    model.addAttribute("products", products);
//	    
//	    return "product"; // Return the same JSP page
//	}
	
	
	
	@RequestMapping("/view/{id}")
	public String viewPage(@PathVariable int id, Model model) {
	    // Fetch the product based on the ID
	    ProductModel product = dao.getViewProductById(id);
	    
	    // Add the product object to the model
	    model.addAttribute("product", product);
	    
	   
	    return "view_product"; 
	}

//	@RequestMapping("/addCart/{pid}/{uid}")
//	public String addToCart(@PathVariable Integer pid, @PathVariable Integer uid, HttpSession session,Model model) {
//		
//		 ProductModel product = dao.getViewProductById(pid);  // Fetch product by product ID
//		    RegModel rm =dao.getRmById(uid);
//		    
//		    if (product == null || rm == null) {
//		        session.setAttribute("error", "Product or user not found.");
//		        return "cartpage";
//		    }
//
//		    
//		 // Check if the product already exists in the cart for the user
//		    CartModel cart = dao.getCartItemByProductAndUser(pid, uid);
//
////		    if (cart != null) {
////		        // If product already in the cart, increase the quantity
////		    	cart.setQuantity(cart.getQuantity() + 1);
////		    	cart.setTotalPrice(cart.getQuantity() * product.getPrice());
////		        dao.updateCartModel(cart);  // Update the cart item
////		        session.setAttribute("success", "Product quantity increased in the cart!");
////		    	
////		    	
////		    }else {
//	        // Create a new CartModel and set the details
//	         cart = new CartModel();
//	        cart.setProduct(product);
//	        cart.setRm(rm);
//	        cart.setQuantity(1);  // Default quantity
//	        cart.setTotalPrice(product.getPrice());  
//	        int result = dao.saveCartModel(cart);
//	        
//	        session.setAttribute("success", "Product added to cart successfully!");
//	        
//		    
//	        model.addAttribute("product", product);
//
//		
//
//		    return"cartpage";
//			 
//	}
	
	
//	@RequestMapping("/addCart/{id}")
//	public String addToCart(@PathVariable("id") int id, HttpServletRequest request, HttpServletResponse response) {
//	    HttpSession session = request.getSession();
//	    ArrayList<CartM> cartList = (ArrayList<CartM>) session.getAttribute("cart-list");
//
//	    if (cartList == null) {
//	        cartList = new ArrayList<>();
//	        session.setAttribute("cart-list", cartList);
//	    }
//
//	    boolean exist = false;
//	    for (CartM c : cartList) {
//	        if (c.getId() == id) {
//	            exist = true;
//	            System.out.println("Item is already in the cart");
//	            break; // Exit loop once found
//	        }
//	    }
//
//	    if (!exist) {
//	        CartM cm = new CartM();
//	        cm.setId(id);
//	        cm.setQuantity(1);
//	        cartList.add(cm);
//	        session.setAttribute("cart-list", cartList);
//	        System.out.println("Item added to cart");
//	    }
//
//	    return "redirect:/product"; // Ensure this is mapped correctly in your view resolver
//	}
//
//	
//	

	
//	@RequestMapping("/addCart/{id}")
//	public String cartpage(@PathVariable int id, Model model) {
//		
//		ProductModel product = dao.getViewProductById(id);
//		 model.addAttribute("product", product);
//		return "cart2";
//		
//	}
	@RequestMapping("/addCart/{id}")
	public String cartpage(@PathVariable int id, HttpSession session, Model model) {
	    ProductModel product = dao.getViewProductById(id);

	    // Retrieve cart from session
	    List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

	    if (cart == null) {
	        cart = new ArrayList<>();
	    }

	    // Add product to cart
	    cart.add(product);

	    // Update session
	    session.setAttribute("cart", cart);
	    
	    model.addAttribute("cart", cart); // Send cart list to JSP
	    return "redirect:/product";
	}

	  
//	@RequestMapping("/quantity-inc-dec")
//	public String incrementDecrement(@RequestParam("action") String action, @RequestParam("id") int id, HttpSession session) {
//
//	    CartM c = (CartM) session.getAttribute("cart"); // Retrieve the cart object from session
//
//	    if (c != null && c.getProduct().getId() == id) { // Ensure the cart and product match the given ID
//	        if ("inc".equals(action)) {
//	            c.setQuantity(c.getQuantity() + 1);
//	        } else if ("dec".equals(action) && c.getQuantity() > 1) {
//	            c.setQuantity(c.getQuantity() - 1);
//	        }
//	        session.setAttribute("cart", c); // Update the session with modified cart
//	    }
//
//	    return "cart1"; // Redirects back to cart page
//	}

	@RequestMapping("/removeCart/{id}")
	public String removeCartItem(@PathVariable int id, HttpSession session) {
	    List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");
	    
	    if (cart != null) {
	        cart.removeIf(product -> product.getId() == id);
	        session.setAttribute("cart", cart);
	    }

	    return "cart2";
	}

	
	@RequestMapping("/buyNow/{id}")
	public String buyNow(@PathVariable int id, HttpSession session, Model model) {
	    List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

	    if (cart != null) {
	        for (ProductModel product : cart) {
	            if (product.getId() == id) {
	                model.addAttribute("selectedProduct", product);
	                break;
	            }
	        }
	    }
	    
	    return "checkout"; // Forward to checkout page
	}
	
	
	@RequestMapping(value = "/placeOrder", method = RequestMethod.POST)
	public String placeOrder(@RequestParam int productId, @RequestParam String address, HttpSession session, Model model) {
	    List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

	    if (cart != null) {
	        for (ProductModel product : cart) {
	            if (product.getId() == productId) {
	                // Here you would typically save the order to the database
	                model.addAttribute("message", "Order placed successfully for " + product.getTitle());
	                session.setAttribute("cart", cart); // Update cart if needed
	                break;
	            }
	        }
	    }

	    return "order-success"; // Redirect to success page
	}




	@RequestMapping("/cart")
	public String cartpages() {
		return "cart2";
		
	}

	

	@RequestMapping("/logout")
	    public String logout(HttpServletRequest request, HttpServletResponse response) {
	        // Invalidating the session
	        HttpSession session = request.getSession(false); 
	        if (session != null) {
	            session.invalidate(); // Invalidate the session
	        }
	        
	        // Redirect to login page after logout
	        return "loginform";  
	    }
	
	

}
