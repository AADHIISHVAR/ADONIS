(app.java)


  package com.aadhi.Demo_hib;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {
    public static void main(String[] args) {
        Emp obj1 = new Emp();
        obj1.setEmp_id(1); // Changed to use integer value 1
        obj1.setEmp_name("tom-cat");
        obj1.setEmp_sal(100000);

        Emp obj2 = new Emp();
        obj2.setEmp_id(2); // Changed to use integer value 2
        obj2.setEmp_name("cat");
        obj2.setEmp_sal(120000);

        // Create Configuration object and configure it
        Configuration con = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Emp.class);

        // Build SessionFactory
        try
        {
        
        	SessionFactory sf = con.buildSessionFactory(); // Auto-close SessionFactory
            Session session = sf.openSession(); 
            		  // Auto-close Session
             
            // Begin transaction
            Transaction trans = session.beginTransaction();
            
            // Save entities
            session.save(obj1);
            session.save(obj2);
            
            // Commit transaction
            trans.commit();
            
            System.out.println("Entities saved successfully!");
        } 
        
        catch (Exception e) 
        {
            System.err.println("An error occurred: " + e);
        }
    }
}




emp.java


package com.aadhi.Demo_hib;

import jakarta.persistence.*;

@Entity
@Table(name = "emp")
public class Emp 
{
	
	@Id
	
	int Emp_id;
	String Emp_name;
	int Emp_sal;
	
	public int getEmp_id() {
		return Emp_id;
	}
	public void setEmp_id(int emp_id) {
		Emp_id = emp_id;
	}
	public String getEmp_name() {
		return Emp_name;
	}
	public void setEmp_name(String emp_name) {
		Emp_name = emp_name;
	}
	public int getEmp_sal() {
		return Emp_sal;
	}
	public void setEmp_sal(int emp_sal) {
		Emp_sal = emp_sal;
	}
	
}
