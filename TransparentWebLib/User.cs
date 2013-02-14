using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;

using ThinkatronicUtils;


namespace transparentLib {
   public class User {
      private int uid=-1;
      private string email  = string.Empty;
        
      private string pswd = string.Empty;
      
      private string fname = string.Empty;
      private string sname = string.Empty;
      
      public int ID{
         get{return this.uid;}
      }

      public string Fname{
         get{return this.fname;}
         set{this.fname = value;}
      }

      public string Sname{
         get{return this.sname;}
         set{this.sname = value;}
      }
      
      public User(string pEmail, string pPswd){
         this.email = pEmail;
         this.pswd = pPswd;
      }
      
      public bool Authenticated{
         get{return this.uid != -1;}
      }
      
      public void SignIn(){
         ThinkatronicUtils.DBAccess.ThinkaDataReader rdr;
         
         SqlConnection conn = DBUtils.GetConnection();
         SqlCommand cmnd = DBUtils.GetCommand("User_Login", conn);
         cmnd.Parameters.Add(DBUtils.GetParameter("@email", email, SqlDbType.VarChar));
         cmnd.Parameters.Add(DBUtils.GetParameter("@pswd", pswd, SqlDbType.VarChar));
         
         conn.Open();
         
         rdr = DBUtils.GetThinkaDataReader(cmnd);
         
         if (rdr.DataReader.HasRows){
            loadFromReader(rdr);
         }
      }
      
      private void loadFromReader(ThinkatronicUtils.DBAccess.ThinkaDataReader rdr){
         if (rdr!= null && rdr.DataReader.HasRows){
            if (rdr.Read()){
               this.uid   = rdr.GetInt("id");
               this.fname = rdr.GetString("fname");
               this.sname = rdr.GetString("sname");
               this.pswd  = rdr.GetString("pswd");
            }
         }
      }
   }
}
