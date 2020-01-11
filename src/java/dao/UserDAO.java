
package dao;

import java.sql.*;
import dto.User;
import static java.lang.System.out;
public class UserDAO {
   Connection con;
PreparedStatement pst;
ResultSet rs;

public boolean Register(User ob)
{

    boolean valid = false;
    
    try
{
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
//Statement st=conn.createStatement();
 pst=con.prepareStatement("insert into user_master(username,password,email,phonenumber,imgurl,gender,verified)values(?,?,?,?,?,?,?)");
    pst.setString(1,ob.getUser_name());
    pst.setString(2,ob.getPassword());
    pst.setString(3,ob.getemail());
    pst.setString(4,ob.getContact_no());
    pst.setString(5,ob.getUrl_img() );
    pst.setString(6,ob.getUser_gender());
    pst.setBoolean(7,ob.isVerified());
    
   int count=pst.executeUpdate();
            
    if (count>0)
        valid=true;
    
    
    con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
 return valid;   
}


public boolean checkUser(User ob)
{
    boolean valid = false;
    
    try
    {
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
    
    pst = con.prepareStatement(
"select * from user_master where email = ? and"
                    + " password = ? and verified = true");
    
    pst.setString(1,ob.getemail());
    pst.setString(2,ob.getPassword());
    
    rs = pst.executeQuery();
            
    if(rs.isBeforeFirst())
        valid = true;
    
    con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return valid;
}
}
