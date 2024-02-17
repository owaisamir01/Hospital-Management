
package hospitalmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class database {
   private Connection con;
   private Statement st;
   private ResultSet rs;
   
   database(){
   
       try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement", "root","");
        st=con.createStatement();
   System.out.println("database conected");
       }catch(Exception e){
         System.out.println(e);
       }
   }
   
   public void patientdata(String name,String disease,String gender,String cnic,String doctor,String did,String date,String month,String year){
        
     String query="insert into patientrecords(name,disease,gender,cnic,doctorname,did,day,month,year)values( '"+name+"','"+disease+"','"+gender+"','"+cnic+"','"+doctor+"','"+did+"','"+date+"','"+month+"','"+year+"')";
      System.out.println(query);
       try{
      st.executeUpdate(query);
       
       }catch(Exception e){
        System.out.println(e);
       }
    }
   
    public  ResultSet getpatientrecord(){
   
   String query="select * from patientrecords";
     System.out.println(query);
   try{
      rs=st.executeQuery(query);
   }
   catch(Exception e){
           System.out.println(e);
           }
   return rs;
   }
         public ResultSet Searchpatientrecords(String search){
   
        String query="select * from patientrecords where name like '"+search+"%'"; 
            System.out.println(query);
        try{
        
         rs=st.executeQuery(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }  
         
              public void deletepatientrecord(String search){
   
      String query="DELETE FROM patientrecords WHERE id='"+search+"'";
      try{
      st.executeUpdate(query);
      
      }catch(Exception e){
      System.out.println(e);
      }
   }
               public ResultSet patientformview(String id ){
   
        String query="select * from patientrecords where id='"+id+"' ";
        try{
        
         rs=st.executeQuery(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
  
   
       public void editpatientrecords(String name,String disease,String gender,String cnic,String doctor,String day,String month,String year,String id){
   
       String query="UPDATE patientrecords SET name='"+name+"',disease='"+disease+"', gender='"+gender+"', cnic='"+cnic+"' , doctorname='"+doctor+"', day='"+day+"', month='"+month+"' WHERE id='"+id+"'";      
         System.out.println(query);
      try{
      st.executeUpdate(query);
      
      }catch(Exception e){
      System.out.println(e);
      }
   } 
       //doctorrs records part//
   public void doctordata(String name,String cnic,String gender,String phonenumber,String address,String day,String month,String year,String qualification){
        
     String query="insert into doctorrecords(dname,dcnic,dgender,dphonenumber,daddress,dday,dmonth,dyear,dqualification)values( '"+name+"','"+cnic+"','"+gender+"','"+phonenumber+"','"+address+"','"+day+"','"+month+"','"+year+"','"+qualification+" ')";
      System.out.println(query);
       try{
      st.executeUpdate(query);
       
       }catch(Exception e){
        System.out.println(e);
       }
    }
   
    public  ResultSet getdoctorrecord(){
   
   String query="select * from doctorrecords";
     System.out.println(query);
   try{
      rs=st.executeQuery(query);
   }
   catch(Exception e){
           System.out.println(e);
           }
   return rs;
   }
  
      public ResultSet Searchdoctorrecords(String search){
   
        String query="select * from doctorrecords where dname like '"+search+"%'"; 
            System.out.println(query);
        try{
        
         rs=st.executeQuery(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }  
         
              public void deletedoctorrecord(String search){
   
      String query="DELETE FROM doctorrecords WHERE id='"+search+"'";
      try{
      st.executeUpdate(query);
      
      }catch(Exception e){
      System.out.println(e);
      }
   }
   
    public ResultSet doctorformview(String id ){
   
        String query="select * from doctorrecords where id='"+id+"' ";
        try{
        
         rs=st.executeQuery(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
    
    public void editdoctorrecords(String name,String cnic,String gender,String phonenumber,String address,String day,String month,String year,String qualification,String id){
   
       String query="UPDATE doctorrecords SET dname='"+name+"',dcnic='"+cnic+"', dgender='"+gender+"', dphonenumber='"+phonenumber+"' , daddress='"+address+"', dday='"+day+"', dmonth='"+month+"',dyear='"+year+"',dqualification='"+qualification+"' WHERE id='"+id+"'";      
         System.out.println(query);
      try{
      st.executeUpdate(query);
      
      }catch(Exception e){
      System.out.println(e);
      }
   }
   // discharge patients//
    public void dischargepatientdata(String id,String name,String disease,String gender,String cnic,String doctor,String adate,String amonth,String ayear,String ddate,String dmonth,String dyear,String totalday,String roombill,String medbill,String totalbill){
        
     String query="insert into dischargepatient(id,name,disease,gender,cnic,drname,aday,amonth,ayear,dday,dmonth,dyear,totalday,roombill,medbill,totalbill)values( '"+id+"','"+name+"','"+disease+"','"+gender+"','"+cnic+"','"+doctor+"','"+adate+"','"+amonth+"','"+ayear+"','"+ddate+"','"+dmonth+"','"+dyear+"','"+totalday+"','"+roombill+"','"+medbill+"','"+totalbill+"')";
      System.out.println(query);
       try{
      st.executeUpdate(query);
       
       }catch(Exception e){
        System.out.println(e);
       }
    }
    public  ResultSet getdischargerecords(){
   
   String query="select * from dischargepatient";
     System.out.println(query);
   try{
      rs=st.executeQuery(query);
   }
   catch(Exception e){
           System.out.println(e);
           }
   return rs;
   }
    
      public ResultSet Searchdischargerecord(String search){
   
        String query="select * from dischargepatient where name like '"+search+"%'"; 
            System.out.println(query);
        try{
        
         rs=st.executeQuery(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }  
       public void deletedischargerecord(String search){
   
      String query="DELETE FROM dischargepatient WHERE id='"+search+"'";
      try{
      st.executeUpdate(query);
      
      }catch(Exception e){
      System.out.println(e);
      }
   }
   
//patient login//
        public ResultSet patientlogin(String name, String id){
   
        String query="select * from dischargepatient where name='"+name+"' and id='"+id+"'";
        try{
        
         rs=st.executeQuery(query);
            System.out.println(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
       //doctor login//
        
              public ResultSet doctorlogin( String id){
   
        String query="select * from doctorrecords where  id='"+id+"'";
        try{
        
         rs=st.executeQuery(query);
            System.out.println(query);
        
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
 
         public ResultSet patientview(String id ){
   
        String query="select * from dischargepatient where id='"+id+"' ";
        try{
        
         rs=st.executeQuery(query);
            System.out.println(query);
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
         public ResultSet doctorview(String id ){
   
        String query="select * from doctorrecords where id='"+id+"' ";
        try{
        
         rs=st.executeQuery(query);
            System.out.println(query);
        }catch(Exception e){
        System.out.println(e);
        }
        
        return rs;
   }
         
  
         //count patient//
            public int patientcount(String id){
       int countstudent=0;
       try{
           String query = "select count(p.id) from patientrecords p,doctorrecords d where p.did=d.id and p.did= '"+id+"'" ;
           System.out.println(query);
           rs = st.executeQuery(query);
          rs.next();
       countstudent  = rs.getInt(1);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       return countstudent;
   }
              
public static void main(String[] args){
    
    database d=new database();
}
}
