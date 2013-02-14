using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.pages.events{
   /**
    * This class fires a custom event whenever its 'productName' member
    * variable is modified by the variable's public accessor
    **/
   public class Product{
   #region private members
      private int _id = -1;
      private string _productName = string.Empty;
   #endregion

   //Define a delegate to represent the Event
   public delegate void NameChangedEventHandler();

   //Define a delegate to represent the Event
   public delegate void IdChangedEventHandler(int newId);


   //Define the event
   public event NameChangedEventHandler NameChangedX;
   public event IdChangedEventHandler IdChanged;

   #region Public accessors
      public int Id{
         get{return this._id;}
         set{this._id = value;
            if (IdChanged != null){
               IdChanged(this._id);
            }
         }
      }

      public string ProductName{
         get{return this._productName;}
         set{this._productName = value;
            //Raise the event if the name is changed by this method:
            if (NameChangedX != null){
               NameChangedX();
            }
         }
      }
   #endregion 

   public override string ToString(){
      return string.Format("Product: ID:{0}, ProductName:{1}", this._id, this.ProductName);
   }

   }
}
