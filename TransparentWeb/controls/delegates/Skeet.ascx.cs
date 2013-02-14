using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.delegates
{
    public partial class Skeet : transparent.include.classes.BaseControl
    {
        //declare delegate type - return type & parameter list must be identical
        delegate void myDelegate(string x);
        delegate void myDelegate2(string x, int y);
        delegate void myDelegate3(string x, int y, char z);

        protected void Page_Load(object sender, EventArgs e)
        {
            myDelegate del1;
            myDelegate2 del2;
            myDelegate3 del3;
            del1 = new myDelegate(myMethod1);
            del1.Invoke("hello!");//Explicit call to invoke()
            del1("roooaaarrrr!");//implicit - use delegate like a method

            //del2 = new myDelegate();//wrong params
            //del2 = new myDelegate(myMethod2);//wrong params
            del2 = new myDelegate2(myMethod2);
            del2.Invoke(" this should be called from Method2", 2);

            del3 = new myDelegate3(myMethod3);
            del3("Delegate3 = ", 10, 'x');
        }


        public void myMethod1(string p)
        {
            this.lOut.Text += "My method1(string): " + p;
        }

        public void myMethod3(string p, int px, char c)
        {
            this.lOut.Text += "My method3(string, int): " + p;
        }

        public void myMethod2(string p, int px)
        {
            this.lOut.Text += "My method2: " + p;
        }

    }
}