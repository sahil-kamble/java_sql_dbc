package sample;
import java.sql.*;
public class exmaple {
    public static void main(String[] args) {
        String JDBC_URL = "jdbc:mysql://localhost:3306/ p4n_db";
        String JDBC_USERNAME = "root";
        String JDBC_PASSWORD = "1234";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from emp");
            //step number 5th get all data from database...
            while(rs.next())
                System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
            con.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    }



//sql databases
create database p4n_db;
-- list database
show databases;
-- select database
use p4n_db;

create table emp(
	id int,
    name varchar(100),
    city varchar(100)
);
select * from emp;
insert into emp value(1,"sahil","mumbai"),
(2,"prem","pune"),
(3,"pankaj","delhi"),
(4,"abhi","goa");
