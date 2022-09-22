/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package homework3;

/**
 *
 * @author anil
 */
public class User {// this class is for deploying array elements for user list
    private String Name,username,Gender,Phone,email;
    
    public User(String n,String u,String g,String p,String e){
        this.Name = n;
        this.username = u;
        this.Gender = g;
        this.Phone = p;
        this.email = e;
    }
    
    public String getName(){
        return Name;
    }
    
     public String getUsername(){
        return username;
    }
     
      public String getGender(){
        return Gender;
    }
    
       public String getPhone(){
        return Phone;
    }
       
        public String getEmail(){
        return email;
    }
}
