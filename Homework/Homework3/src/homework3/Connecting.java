/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package homework3;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;

/**
 *
 * @author anil
 */
public class Connecting {
    private static final String servername ="localhost";//this is default
    private static final String username ="root";//this is default
    private static final String dbname="data";// you must set your database name here
    private static final Integer portnumber=3306;//default mysql port
    private static final String password="Mehmet_53";// you must enter your own password
    
    public static Connection getConnection(){
       Connection cnnct = null;
       MysqlDataSource datasource = new MysqlDataSource();
       
       datasource.setServerName(servername);
       datasource.setUser(username);
       datasource.setPassword(password);
       datasource.setDatabaseName(dbname);
       datasource.setPortNumber(portnumber);
       
        try {
            cnnct = datasource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(" Get Connection "+Connecting.class.getName()).log(Level.SEVERE, null, ex);
        }
       return cnnct;
    }
    
}
