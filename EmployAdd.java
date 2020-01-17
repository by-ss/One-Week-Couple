
import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.SQLException;

public class EmployAdd {
 

      public boolean addEmploy(Employ employ) {

        int id = employ.getId();
        
    	String name=employ.getName();

    	int sex=employ.getSex();

    	int age=employ.getAge();

    	String wechat=employ.getWechat();

        int personality=employ.getPersonality();

        int bedtime=employ.getBedtime();

        int getup=employ.getGetup();

        String food=employ.getFood();

        String hobby=employ.getHobby();

        int date=employ.getDate();

        int fav=employ.getFav();
        
        int u_age=employ.getUage();
        
        String u_per=employ.getUper();
        
        int u_rest=employ.getUrest();
        
        int u_sex=employ.getSex();
        
        int travel=employ.getTravel();
        
        String music=employ.getMusic();

    	Connection conn=null;

    	PreparedStatement pstat=null;


        String driver = "com.mysql.cj.jdbc.Driver";

        //URL指向要访问的数据库名mysql

        String url = "jdbc:mysql://localhost:3306/yizhoucp?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";

        //MySQL配置时用户名

        String user = "root";

        //MySQL配置时的密码

        String password = "Paul990310!";

    	try {

			Class.forName(driver); 

			conn=DriverManager.getConnection(url, user, password);//获取数据库链接

			String sql = "delete from cp where wechat=\""+wechat+"\"";
			
			pstat=conn.prepareStatement(sql); //prepareStatement类对象，用来执行SQL语句
			
			pstat.executeUpdate();//执行sql语句
			
			pstat.close();
			
			sql="insert into cp (id,name,age,sex,wechat,personality,bedtime,getup,date,fav,hobby,food,u_age,u_per,u_rest,u_sex,travel,music) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			pstat=conn.prepareStatement(sql); //prepareStatement类对象，用来执行SQL语句

			pstat.setInt(1, id);

			pstat.setString(2, name);

			pstat.setInt(3, age);

			pstat.setInt(4, sex);

            pstat.setString(5, wechat);

            pstat.setInt(6, personality);

            pstat.setInt(7, bedtime);

            pstat.setInt(8, getup);

            pstat.setInt(9, date);

            pstat.setInt(10, fav);
            
            pstat.setString(11, hobby);

            pstat.setString(12, food);
            
            pstat.setInt(13, u_age);
            
            pstat.setString(14, u_per);
            
            pstat.setInt(15, u_rest);
            
            pstat.setInt(16, u_sex);
            
            pstat.setInt(17, travel);
            
            pstat.setString(18, music);

			pstat.executeUpdate();//执行sql语句


			pstat.close();

			conn.close();
			System.out.println("新增数据成功!");   

		} catch(ClassNotFoundException e) {   

            System.out.println("加载驱动异常!");   

            e.printStackTrace();   

            } catch(SQLException e) {    

            System.out.println("获取连接异常!"); 

            e.printStackTrace();  

            }catch (Exception e) {

            // TODO: handle exception
            System.out.println("不知道!"); 
            e.printStackTrace();

        }

		return true;   	  

      }

}
