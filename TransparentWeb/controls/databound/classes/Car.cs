using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.controls.databound.classes
{   [Serializable]
    public class Car
    {
        public string _make = "Volkswagen";
        public string _model = "Golf";
        public int _year = 2008;
        public double _price = 15000.0;
        public string _vin = System.Guid.NewGuid().ToString();

        public string Make{
            get{return _make;}
            set{_make=value;}
        }
        public string Model
        {
            get { return _model; }
            set { _model = value; }
        }

        public string VIN
        {
            get { return _vin; }
            set { _vin = value; }
        }

        public double Price{
            get{return _price;}
            set{_price = value;}
        }

        public Car(){
        }

        public static List<Car> GetList(){  
            List<Car> lstCar = new List<Car>();
            for (int i=0;i<5; i++){
                Car newCar = new Car();
                System.Console.WriteLine("car: " + newCar.VIN);
                lstCar.Add(newCar);
            }

            return lstCar;
        }

        public override string ToString(){
            return string.Format("Car: {0} {1} £{2} (ID:{3})", this.Make, Model, Price, VIN);
        }


    }
}
