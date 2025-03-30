package com.ecom;

import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mysql.jdbc.PreparedStatement;









public class MainDao {
	
	private JdbcTemplate template;
	private Object con;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public void uploadCategoryImages(Category cat) {
		// TODO Auto-generated method stub
		String fpath="C:\\Users\\HP\\eclipse-workspace\\E_commerce_springmvc\\src\\main\\webapp\\img\\category_img\\";
		String filename=cat.getFile().getOriginalFilename();
		
try{  
			
			FileOutputStream fout=new FileOutputStream(fpath+filename);
	        byte b[]=cat.getFile().getBytes();  
	          
	        fout.write(b);  
	       
	        fout.close();  
	        //  model.addAttribute("msg","File Uploaded Successfully");
	        }catch(Exception ex){
	        	System.out.println(ex);
	        	}  
		
		
	}

	public int saveCategory(Category cat) {
		// TODO Auto-generated method stub
		String filename=cat.getFile().getOriginalFilename();
		String sql = "insert into tb_category (name,isActive,filename) value('"+cat.getName()+"','"+cat.isActive()+"','"+filename+"')";
		
		return template.update(sql);
		
	}

	public List<Category> getAllData() {
		// TODO Auto-generated method stub
		String sql="Select * from tb_category";
		return template.query(sql,new RowMapper<Category>(){

			@Override
			public Category mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				Category ca=new Category();
				
				ca.setId(rs.getInt("id"));
			    ca.setName(rs.getString("name"));
				ca.setActive(rs.getBoolean("isActive"));
				ca.setFilename(rs.getString("filename"));
				return ca;
			}
			
		});
			
		
	
	}

	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
        String sql = "select * from tb_category where id='"+id+"'";
		
		return (Category) template.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper(Category.class));
		
	}

	public void uploadCategoryUpdate(Category cat) {
		// TODO Auto-generated method stub
		String fpath="C:\\Users\\HP\\eclipse-workspace\\E_commerce_springmvc\\src\\main\\webapp\\img\\category_img\\";
		String filename=cat.getFile().getOriginalFilename();
		
try{  
			
			FileOutputStream fout=new FileOutputStream(fpath+filename);
	        byte b[]=cat.getFile().getBytes();  
	          
	        fout.write(b);  
	       
	        fout.close();  
	        //  model.addAttribute("msg","File Uploaded Successfully");
	        }catch(Exception ex){
	        	System.out.println(ex);
	        	}  
		
	}

	public int getUpdateById(Category cat) {
		// TODO Auto-generated method stub
		String filename=cat.getFile().getOriginalFilename();
		String sql = "update tb_category set name='"+cat.getName()+"',filename='"+filename+"' where id='"+cat.getId()+"'";
		
		//System.out.println("SQL Query: " + sql);
		
		return template.update(sql);
		
	}

	public int getDeleteById(int id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_category where id='"+id+"'";
		return template.update(sql);
	}

	public void uploadProduct(ProductModel pro) {
		// TODO Auto-generated method stub
		String fpath="C:\\Users\\HP\\eclipse-workspace\\E_commerce_springmvc\\src\\main\\webapp\\img\\product_img\\";
		String filename=pro.getFile().getOriginalFilename();
		
try{  
			
			FileOutputStream fout=new FileOutputStream(fpath+filename);
	        byte b[]=pro.getFile().getBytes();  
	          
	        fout.write(b);  
	       
	        fout.close();  
	        //  model.addAttribute("msg","File Uploaded Successfully");
	        }catch(Exception ex){
	        	System.out.println(ex);
	        	}  
		
	}

	public int saveProduct(ProductModel pro) {
		// TODO Auto-generated method stub
		
		String filename=pro.getFile().getOriginalFilename();
		String sql = "insert into tb_product (title,description,category,price,stock,filename) value('"+pro.getTitle()+"','"+pro.getDescription()+"','"+pro.getCategory()+"','"+pro.getPrice()+"','"+pro.getStock()+"','"+filename+"')";
		
		return template.update(sql);
		
		
		
	}

	public List<ProductModel> getProducts() {
		// TODO Auto-generated method stub
		String sql="select * from tb_product";
		
		return template.query(sql, new RowMapper<ProductModel>() {

			@Override
			public ProductModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				
				ProductModel pm=new ProductModel();
				pm.setId(rs.getInt("id"));
				pm.setTitle(rs.getString("title"));
				pm.setDescription(rs.getString("description"));
				pm.setCategory(rs.getString("category"));
				pm.setPrice(rs.getDouble("price"));
				pm.setStock(rs.getInt("stock"));
				pm.setFilename(rs.getString("filename"));
				return pm;
			}
			
		});
	}

	public ProductModel getProductById(int id) {
		// TODO Auto-generated method stub
		 String sql = "select * from tb_product where id='"+id+"'";
			
			return (ProductModel) template.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper(ProductModel.class));
	}

	public void uploadProductUpdate(ProductModel pro) {
		// TODO Auto-generated method stub
		String fpath="C:\\Users\\HP\\eclipse-workspace\\E_commerce_springmvc\\src\\main\\webapp\\img\\product_img\\";
		String filename=pro.getFile().getOriginalFilename();
		
try{  
			
			FileOutputStream fout=new FileOutputStream(fpath+filename);
	        byte b[]=pro.getFile().getBytes();  
	          
	        fout.write(b);  
	       
	        fout.close();  
	        //  model.addAttribute("msg","File Uploaded Successfully");
	        }catch(Exception ex){
	        	System.out.println(ex);
	        	}  
		
	}

	public int getUpdateById(ProductModel pro) {
		// TODO Auto-generated method stub
		String filename=pro.getFile().getOriginalFilename();
		String sql = "update tb_product set title='"+pro.getTitle()+"',description='"+pro.getDescription()+"',category='"+pro.getCategory()+"',price='"+pro.getPrice()+"',stock='"+pro.getStock()+"',filename='"+filename+"' where id='"+pro.getId()+"'";
		
		//System.out.println("SQL Query: " + sql);
		
		return template.update(sql);
	
	}

	public int getProductDeleteById(int id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_product where id='"+id+"'";
		return template.update(sql);
	}

	public Category getCategoryById1(int id) {
		// TODO Auto-generated method stub
		String sql="select * from tb_category where id='"+id+"'";
		return (Category) template.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper(Category.class));
	}
//
//	public List<ProductModel> getProductsByCategoryId(int category) {
//		String sql = "SELECT * FROM tb_product WHERE category = '"+category+"'";
//	    return template.query(sql, new Object[]{}, new BeanPropertyRowMapper<>(ProductModel.class));
//	}

	public List<RegModel> isEmailExist(String email) {
		// TODO Auto-generated method stub
     String sql="select *from users where email='"+email+"'";
		
		List<RegModel> list1=template.query(sql, new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				
				RegModel rm=new RegModel();
				rm.setEmail(rs.getString("email"));
				
				return rm;
			}
			
		});
		
		List<RegModel> list=list1.size()>0?list1:null;
		return list;
	}
	
	public void uploadCategoryImages(RegModel rm) {
		// TODO Auto-generated method stub
		String fpath="C:\\Users\\HP\\eclipse-workspace\\E_commerce_springmvc\\src\\main\\webapp\\img\\user_img\\";
		String filename=rm.getFile().getOriginalFilename();
		
try{  
			
			FileOutputStream fout=new FileOutputStream(fpath+filename);
	        byte b[]=rm.getFile().getBytes();  
	          
	        fout.write(b);  
	       
	        fout.close();  
	        //  model.addAttribute("msg","File Uploaded Successfully");
	        }catch(Exception ex){
	        	System.out.println(ex);
	        	}  
		
	}
	

	public int saveRegModel(RegModel rm) {
		// TODO Auto-generated method stub
		String filename=rm.getFile().getOriginalFilename();
		String sql = "insert into users (name,mobileNumber,email,address,city,state,pincode,password,confirmpassword,filename) value('"+rm.getName()+"','"+rm.getMobileNumber()+"','"+rm.getEmail()+"','"+rm.getAddress()+"','"+rm.getCity()+"','"+rm.getState()+"','"+rm.getPincode()+"','"+rm.getPassword()+"','"+rm.getConfirmpassword()+"','"+filename+"')";
		return template.update(sql);
	}

	public List<RegModel> doLogin(LoginModel lm) {
		// TODO Auto-generated method stub
        String sql="select * from  users where email='"+lm.getEmail()+"'";
		
		List<RegModel>list1=template.query(sql, new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				RegModel rm=new RegModel();
				
				rm.setId(rs.getInt("id"));
				rm.setEmail(rs.getString("email"));
				rm.setPassword(rs.getString("password"));
				return rm;
			}
			
		});
		
		List<RegModel>list=list1.size()>0?list1:null;
		
		return list;
	}

//	public List<ProductModel> getProductsByCategory(String categoryId) {
//		// TODO Auto-generated method stub
//		
//		 List<ProductModel> productList = new ArrayList<>();
//		 String query = "SELECT id, title, description, price, stock, filename FROM tb_product WHERE category ='"+categoryId+"' ";
//		return productList;
//	}

	

	public List<AdminRegModel> isAdminEmailExist(String email) {
		// TODO Auto-generated method stub
		
		 String sql="select *from tb_admin where email='"+email+"'";
			
			List<AdminRegModel> list2=template.query(sql, new RowMapper<AdminRegModel>() {

				@Override
				public AdminRegModel mapRow(ResultSet rs, int arg1) throws SQLException {
					// TODO Auto-generated method stub
					
					AdminRegModel arm=new AdminRegModel();
					arm.setEmail(rs.getString("email"));
					
					return arm;
				}
				
			});
			
			List<AdminRegModel> list1=list2.size()>0?list2:null;
			return list1;
	}

	public int saveAdminRegModel(AdminRegModel arm) {
		// TODO Auto-generated method stub
		String sql = "insert into tb_admin (name,mobileNumber,email,password,confirmpassword) value('"+arm.getName()+"','"+arm.getMobileNumber()+"','"+arm.getEmail()+"','"+arm.getPassword()+"','"+arm.getConfirmpassword()+"')";
		return template.update(sql);
	}

	public List<AdminRegModel> doAdminLogin(AdminLoginModel alm) {
		// TODO Auto-generated method stub
		 String sql="select * from  tb_admin where email='"+alm.getEmail()+"'";
			
			List<AdminRegModel>list2=template.query(sql, new RowMapper<AdminRegModel>() {

				@Override
				public AdminRegModel mapRow(ResultSet rs, int arg1) throws SQLException {
					// TODO Auto-generated method stub
					AdminRegModel arm=new AdminRegModel();
					
					arm.setEmail(rs.getString("email"));
					arm.setPassword(rs.getString("password"));
					return arm;
				}
				
			});
			
			List<AdminRegModel>list1=list2.size()>0?list2:null;
			
			return list1;
	}

	public List<ProductModel> getProduct() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM tb_product";
	    
	   
	    return template.query(sql, new BeanPropertyRowMapper<>(ProductModel.class));
	}


	public List<ProductModel> getProductsByCategory(int categoryId) {
		// TODO Auto-generated method stub
       String sql = "SELECT * FROM tb_product WHERE category ='"+categoryId+"' ";
	    
	    // Use JdbcTemplate to execute the SQL with the category parameter
	    return template.query(sql, new Object[]{}, new BeanPropertyRowMapper<>(ProductModel.class));
		
	}

	public ProductModel getViewProductById(int id) {
		// TODO Auto-generated method stub
		String sql="select * from tb_product where id='"+id+"'";
		   
		return template.queryForObject(sql, new Object[]{}, new BeanPropertyRowMapper<>(ProductModel.class));
		
	}

	
	public RegModel getRmById(int uid) {
		// TODO Auto-generated method stub
		String sql="select * from  users where id='"+uid+"'";
		   
		return template.queryForObject(sql, new Object[]{}, new BeanPropertyRowMapper<>(RegModel.class));
	}

	public int saveCartModel(CartModel cart) {
		// TODO Auto-generated method stub
		String sql="insert into tb_cart (quantity,product_id,rm_id) value ('"+cart.getQuantity()+"','"+cart.getProduct().getId()+"','"+cart.getRm().getId()+"')";
		return template.update(sql);
	}

	public CartModel getCartItemByProductAndUser(Integer pid, Integer uid) {
		String sql = "SELECT * FROM tb_cart WHERE product_id = ? AND rm_id = ?";
	    List<CartModel> carts = template.query(sql, new Object[]{pid, uid}, new BeanPropertyRowMapper<>(CartModel.class));
	    
	    return carts.isEmpty() ? null : carts.get(0);
	}
	
	


	public int updateCartModel(CartModel cart) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_cart SET quantity ='"+cart.getQuantity()+"' WHERE product_id ='"+cart.getProduct().getId()+"'  AND rm_id = '"+cart.getRm().getId()+"'";
	    return template.update(sql);
		
	
	
	}
	
	

	
		
	}

	
	
	
	
	
	

