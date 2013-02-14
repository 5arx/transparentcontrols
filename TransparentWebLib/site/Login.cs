using System;
using System.Collections.Generic;
using System.Text;

namespace transparentLib.site {
   public class Login {
      private string _email = string.Empty;
      private string _pswd = string.Empty;
      private int _uid;
 
      public string Email{
         get{return this._email;}
      }
      
      public int UID{
         get{return this._uid;}
      }
      
      public Login(string pEmail, string pPswd){
         this._email = pEmail;
         this._pswd = pPswd;
      }
      
      public bool Authorised{
         get{
            User u = new transparentLib.User(_email, _pswd);
            u.SignIn();
            
            return (u.Authenticated);
            
               //Email.Equals("indra@webdoma.in",StringComparison.OrdinalIgnoreCase) && (_pswd.Equals("asdf", StringComparison.OrdinalIgnoreCase)));
         }
      }

   
   }
}
