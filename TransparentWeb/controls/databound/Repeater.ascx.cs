using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace transparent.controls.databound
{
    public partial class Repeater : transparent.include.classes.BaseControl
    {
        public List<Person> lstPersons{
            get{
                if (ViewState["lstPersons"] == null){
                    ViewState["lstPersons"] = GetPeople();
                }
                return (List<Person>)ViewState["lstPersons"];
            }
            set{
                ViewState["lstPersons"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
                bindRepeater();
            }
        }

        private void bindRepeater(){
            rpt1.DataSource = lstPersons;
            rpt1.DataBind();
        }

        #region DataAccess
        [Serializable]
        public class Person
        {
            public Guid ID{get; private set;}
            public string Forename { get; set; }
            public string Surname { get; set; }
            public string Email { get; set; }
            public DateTime DateOfBirth { get; set; }

            public Person(){
                ID = System.Guid.NewGuid();
            }

            public Person(string _fname, string _sname, string _email, DateTime _dob){
                ID = System.Guid.NewGuid();
                Forename = _fname;
                Surname  = _sname;
                Email = _email;
                DateOfBirth = _dob;
            }

        }

        public List<Person> GetPeople(){
            List<Person> lst = new List<Person>();
            lst.Add(new Person("Adam", "Sandler", "adam.sandler@gmail.com", new DateTime(1964, 3, 15)));
            lst.Add(new Person("John", "Lennon", "john.lennon@hotmail.com", new DateTime(1949, 10, 2)));
            lst.Add(new Person("John F", "Kennedy", "johnfkennedy@pentagon.gov.us", new DateTime(1931, 5, 25)));
            lst.Add(new Person("Helena", "Bonham-Carter", "hbc@bonham-carter.co.uk", new DateTime(1968, 2, 19)));
            lst.Add(new Person("Jodie", "Foster", "jodie.foster@universalstudios.com", new DateTime(1968, 8, 18)));
            return lst;
        }
        #endregion

        protected void rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lout.Text = string.Format("ItemCommand: You clicked row #{0}. The CommandName passed was {1}, the CommandArgument was: {2}", e.Item.ItemIndex,
                e.CommandName, e.CommandArgument);
        }
    }
}