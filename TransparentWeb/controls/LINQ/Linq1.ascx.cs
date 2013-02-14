using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.LINQ
{
    [Serializable]
    public class Person
    {
        public Guid ID { get; private set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public char Gender { get; set; }

        public Person()
        {
            ID = System.Guid.NewGuid();
        }

    }

    enum SortDirection
    {
        Ascending,
        Descending
    }

    enum SortField
    {
        Name,
        Age,
        Gender
    }

    public partial class Linq1 : transparent.include.classes.BaseControl
    {
        const string IMG_DIR = "/include/img/";

        private SortDirection SortDir
        {
            get
            {
                if (Session["SortDirectionLinq1"] == null)
                {
                    Session["SortDirectionLinq1"] = SortDirection.Ascending;
                }
                return (SortDirection)Session["SortDirectionLinq1"];
            }
            set
            {
                Session["SortDirectionLinq1"] = value;
            }
        }

        private SortField SortFld
        {
            get
            {
                if (Session["SortFieldLinq1"] == null)
                {
                    Session["SortFieldLinq1"] = SortField.Name;
                }
                return (SortField)Session["SortFieldLinq1"];
            }
            set
            {
                Session["SortFieldLinq1"] = value;
            }
        }

        public List<Person> PersonList
        {
            get
            {
                if (ViewState["PersonList"] == null)
                {

                    ViewState["PersonList"] = new List<Person>();

                }
                return (List<Person>)ViewState["PersonList"];

            }
            set
            {
                ViewState["PersonList"] = value;
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            this.btnAdd.Click += new EventHandler(btnAdd_Click);
            this.rptPeople.ItemCommand += new RepeaterCommandEventHandler(rptPeople_ItemCommand);
            this.rptPeople.ItemDataBound += new RepeaterItemEventHandler(rptPeople_ItemDataBound);
        }

        void rptPeople_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                string _imgurl = IMG_DIR + "sortasc.gif";

                ((ImageButton)e.Item.FindControl("ibtSortName")).ImageUrl = _imgurl;
                ((ImageButton)e.Item.FindControl("ibtSortAge")).ImageUrl = _imgurl;
                ((ImageButton)e.Item.FindControl("ibtSortGender")).ImageUrl = _imgurl;

                switch (SortFld)
                {

                    case SortField.Name:
                        ((ImageButton)e.Item.FindControl("ibtSortName")).ImageUrl = IMG_DIR + (
                            SortDir == SortDirection.Ascending ? "sortdesc.gif" : "sortasc.gif");
                        ((ImageButton)e.Item.FindControl("ibtSortName")).Visible = true;
                        break;
                    case SortField.Age:
                        ((ImageButton)e.Item.FindControl("ibtSortAge")).ImageUrl = IMG_DIR + (
                            SortDir == SortDirection.Ascending ? "sortdesc.gif" : "sortasc.gif");
                        ((ImageButton)e.Item.FindControl("ibtSortAge")).Visible = true;
                        break;
                    case SortField.Gender:
                        ((ImageButton)e.Item.FindControl("ibtSortGender")).ImageUrl = IMG_DIR + (
                            SortDir == SortDirection.Ascending ? "sortdesc.gif" : "sortasc.gif");
                        ((ImageButton)e.Item.FindControl("ibtSortGender")).Visible = true;
                        break;
                }
            }
        }

        void rptPeople_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //Response.Write(e.CommandName + ": "+ e.CommandArgument.ToString());
            switch (e.CommandArgument.ToString())
            {
                case "Name":
                    if (SortFld == SortField.Name)
                    {
                        SortDir = SortDir == SortDirection.Ascending ? SortDirection.Descending : SortDirection.Ascending;
                    }
                    else
                    {
                        SortFld = SortField.Name;
                        SortDir = SortDirection.Ascending;
                    }
                    break;
                case "Age":
                    if (SortFld == SortField.Age)
                    {
                        SortDir = SortDir == SortDirection.Ascending ? SortDirection.Descending : SortDirection.Ascending;
                    }
                    else
                    {
                        SortFld = SortField.Age;
                        SortDir = SortDirection.Ascending;
                    }
                    break;

                case "Gender":
                    if (SortFld == SortField.Gender)
                    {
                        SortDir = SortDir == SortDirection.Ascending ? SortDirection.Descending : SortDirection.Ascending;
                    }
                    else
                    {
                        SortFld = SortField.Gender;
                        SortDir = SortDirection.Ascending;
                    }
                    break;
            }
            bindPeople();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PersonList = new List<Person>(){
                    new Person(){Name = "alan turing",      Age=65, Gender='M'},
                    new Person(){Name = "ada lovelace",     Age=85, Gender='F'},
                    new Person(){Name = "tommy flowers",    Age=77, Gender='M'},
                    new Person(){Name = "brian kernighan",  Age=67, Gender='M'}
                };

                bindPeople();
            }
        }

        protected void bindPeople()
        {
            Sort();
            rptPeople.DataSource = this.PersonList;
            rptPeople.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                PersonList.Add(new Person() { Name = txtname.Text.Trim(), Age = Int32.Parse(txtAge.Text.Trim()), Gender = ddlGender.Items[ddlGender.SelectedIndex].Text.ToCharArray()[0] });
                txtAge.Text = string.Empty;
                txtname.Text = string.Empty;
                ddlGender.SelectedIndex = 0;
                bindPeople();
            }
        }

        protected void btnSort_Click(object sender, EventArgs e)
        {
            bindPeople();
        }

        /* Sort the List<Person> */
        private void Sort()
        {
            switch (SortFld)
            {
                case SortField.Age:
                    if (SortDir == SortDirection.Ascending)
                    {
                        PersonList = PersonList.OrderBy(x => x.Age).ThenBy(x => x.Name.Split(new char[] { ' ' })[1])
                        .ThenBy(x => x.Name.Split(new char[] { ' ' })[0])
                        .ToList<Person>();
                    }
                    else
                    {
                        PersonList = PersonList.OrderByDescending(x => x.Age).ThenBy(x => x.Name.Split(new char[] { ' ' })[1])
                        .ThenBy(x => x.Name.Split(new char[] { ' ' })[0])
                        .ToList<Person>();
                    }
                    break;

                case SortField.Name:
                    if (SortDir == SortDirection.Ascending)
                    {
                        PersonList = PersonList.OrderBy(x => x.Name.Split(new char[] { ' ' })[1])
                        .ThenBy(x => x.Name.Split(new char[] { ' ' })[0])
                        .ToList<Person>();
                    }
                    else
                    {
                        PersonList = PersonList.OrderByDescending(x => x.Name.Split(new char[] { ' ' })[1])
                        .ThenBy(x => x.Name.Split(new char[] { ' ' })[0])
                        .ToList<Person>();
                    }
                    break;

                case SortField.Gender:
                    if (SortDir == SortDirection.Ascending)
                    {
                        PersonList = PersonList.OrderBy(x => x.Gender).ThenBy(x => x.Name.Split(new char[] { ' ' })[1])
                        .ThenBy(x => x.Name.Split(new char[] { ' ' })[0]).ToList();
                    }
                    else
                    {
                        PersonList = PersonList.OrderByDescending(x => x.Gender).ThenBy(x => x.Name.Split(new char[] { ' ' })[1])
                            .ThenBy(x => x.Name.Split(new char[] { ' ' })[0]).ToList();
                    }
                    break;
            }
        }


    }
}