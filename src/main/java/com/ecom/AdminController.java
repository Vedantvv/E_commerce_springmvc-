package com.ecom;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller
public class AdminController {
	
	@Autowired
	private MainDao dao;
	
	
	@RequestMapping("/adminLogin")
	public String LoginPage() {
		return"admin/adminlogin";
	}
	
	
	
	
	@RequestMapping("/adminregister")
	public String register() {
		return"admin/adminregister";
	}
	
	@RequestMapping(value="/saveadmin",method=RequestMethod.POST)
    public String saveRegModel(@ModelAttribute("arm") AdminRegModel arm,HttpSession session) {
		
		List<AdminRegModel> list1=dao.isAdminEmailExist(arm.getEmail());
		
		if(list1==null) {
			int s=dao.saveAdminRegModel(arm);
			session.setAttribute("sesreg","Success");
			return "admin/adminlogin";
		}else {
			session.setAttribute("sesemailexist","Error");
			return "admin/adminregister";
		}
	}
	
	
	@RequestMapping(value="/adminSubmitlogin",method=RequestMethod.POST)
	
    public String doLogin(@ModelAttribute("alm") AdminLoginModel alm,HttpSession session) {
		
		List<AdminRegModel> list1=dao.doAdminLogin(alm);
		
		if(list1==null) {
			session.setAttribute("usernotexist","notexist");
			return"admin/adminregister";
		}else {
			
			if(alm.getPassword().equals(list1.get(0).getPassword())) {
				
				session.setAttribute("sesemail", alm.getEmail());
				return "redirect:/admin";
				
			}else {
				
				session.setAttribute("seslog", "failed");
				return"admin/adminlogin";
			}
		}
		
		}
	
	
	
	
	@RequestMapping("/admin")
	public String index() {
		return"admin/index";
	}
	
	@RequestMapping("/add_product")
	
	public String product(Model model) {
		
			List<Category> list=dao.getAllData();
			
			model.addAttribute("list", list);
			
		    return"admin/add_product";
	}
	
@RequestMapping("/category")
	
	public String Category() {
		//return"admin/category";
		return"redirect:/viewrecord";
	}

@RequestMapping(value="submitcategory",method=RequestMethod.POST)

public String uploadCategory(@ModelAttribute("cat") Category cat,HttpSession sessions) {
	
	dao.uploadCategoryImages(cat);
	dao.saveCategory(cat);
	sessions.setAttribute("sesupload", "sucess");
	//return "admin/category";
	
	return"redirect:/viewrecord";
	
	
}

@RequestMapping("/viewrecord") 
public String getAllData(Model model) {
	
	List<Category> list=dao.getAllData();
	
	model.addAttribute("list", list);
	
	return"admin/category";
}

@RequestMapping("/edit/{id}")
public String getRegModelById(@PathVariable int id,Model model) {
	Category ca = dao.getCategoryById(id);
	model.addAttribute("ca", ca);
	return "admin/edit_category";
}



@RequestMapping("/updateCategory")
public String getUpdateById(@ModelAttribute("cat") Category cat, HttpSession session) {
	dao.uploadCategoryUpdate(cat);
	int u = dao.getUpdateById(cat);
	session.setAttribute("sesupdate", "Update Successfully");
	return "redirect:/viewrecord";
}

@RequestMapping("/delete/{id}")
public String getDeleteById(@PathVariable int id, HttpSession session) {
	int d = dao.getDeleteById(id);
	session.setAttribute("sesdelete", "Delete Successfully");
	return "redirect:/viewrecord";
}

@RequestMapping("/saveProduct")
public String addproduct(@ModelAttribute("pro") ProductModel pro,HttpSession sessions,Model model) {
	dao.uploadProduct(pro);
	dao.saveProduct(pro);
	
     List<Category> list=dao.getAllData();
	
	model.addAttribute("list", list);
	return "admin/add_product";
	
	
}

@RequestMapping("/products")
public String viewProducts() {
	
	return"redirect:/viewProduct";
}

@RequestMapping("/viewProduct")
public String getAllProduct(Model model) {
	List<ProductModel>list=dao.getProducts();
	model.addAttribute("list", list);
	return"admin/products";
	
	
}

@RequestMapping("/Edit/{id}")
public String getProductModelById(@PathVariable int id,Model model) {
	ProductModel pm = dao.getProductById(id);
	
	List<ProductModel>list=dao.getProducts();
	model.addAttribute("list", list);
	return "admin/edit_product";
}

@RequestMapping("/updateProduct")
public String getUpdateProductById(@ModelAttribute("pro") ProductModel pro, HttpSession session) {
	dao.uploadProductUpdate(pro);
	int u = dao.getUpdateById(pro);
	session.setAttribute("sesupdate", "Update Successfully");
	return "redirect:/viewProduct";
}

@RequestMapping("/Delete/{id}")
public String getDeleteProductById(@PathVariable int id, HttpSession session) {
	int d = dao.getProductDeleteById(id);
	session.setAttribute("sesdelete", "Delete Successfully");
	return "redirect:/viewProduct";
}

@RequestMapping("/addAdmin")
public String getadd() {
	return "admin/adminregister";
	
}

}
