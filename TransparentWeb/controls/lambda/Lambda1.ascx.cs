using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.lambda
{
    public partial class Lambda1 : transparent.include.classes.BaseControl
    {
        public Contact.SortType CurrentSort
        {
            get
            {
                if (ViewState["CurrentSort"] == null)
                {
                    ViewState["CurrentSort"] = Contact.SortType.ForenameASC;
                }
                return (Contact.SortType)ViewState["CurrentSort"];
            }
            set
            {
                ViewState["CurrentSort"] = value;
            }
        }
        public List<Contact> lstContacts
        {
            get
            {
                if (ViewState["ContactList"] == null)
                {
                    ViewState["ContactList"] = getNewContactList();
                }
                return (List<Contact>)ViewState["ContactList"];

            }
            set
            {
                lstContacts = value;
            }
        }

        public List<Contact> getNewContactList()
        {
            List<Contact> lst = new List<Contact>();
            Contact c;
            c = new Contact();
            c.Forename = "Tiger";
            c.Surname = "Woods";
            c.Address = "Mansion #27";
            c.Company = "Tiger Woods Ltd.";
            c.Town = "Sacramento";
            c.County = "90781 California";
            c.DateOfBirth = DateTime.Parse("1967-05-27");
            lst.Add(c);


            c = new Contact();
            c.Forename = "Lady";
            c.Surname = "Gaga";
            c.Address = "C/o Sony Music Ltd";
            c.Company = "Gaga ";
            c.Town = "Los Angeles";
            c.County = "90413 California";
            c.DateOfBirth = DateTime.Parse("1978-11-04");

            lst.Add(c);
            return lst;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                buildGui();
            }
        }

        private void buildGui()
        {
            this.rptList.DataSource = this.lstContacts;
            this.rptList.DataBind();
        }

        private void sortList() {
            if (CurrentSort == Contact.SortType.ForenameASC)
            {
                lstContacts.Sort((a, b) => a.Forename.CompareTo(b.Forename));
            }
            else if (CurrentSort == Contact.SortType.ForenameDESC)
            {
                lstContacts.Sort((a, b) => b.Forename.CompareTo(a.Forename));
            }

            else if (CurrentSort == Contact.SortType.SurnameASC)
            {
                lstContacts.Sort((a, b) => a.Surname.CompareTo(b.Surname));
            }
            else if (CurrentSort == Contact.SortType.SurnameDESC)
            {
                lstContacts.Sort((a, b) => b.Surname.CompareTo(a.Surname));
            }

            else if (CurrentSort == Contact.SortType.CountyASC)
            {
                lstContacts.Sort((a, b) => a.County.CompareTo(b.County));
            }
            else if (CurrentSort == Contact.SortType.CountyDESC)
            {
                lstContacts.Sort((a, b) => b.County.CompareTo(a.County));
            }

            else if (CurrentSort == Contact.SortType.TownASC)
            {
                lstContacts.Sort((a, b) => a.Town.CompareTo(b.Town));
            }
            else if (CurrentSort == Contact.SortType.TownDESC)
            {
                lstContacts.Sort((a, b) => b.Town.CompareTo(a.Town));
            }

            else if (CurrentSort == Contact.SortType.CompanyASC)
            {
                lstContacts.Sort((a, b) => a.Company.CompareTo(b.Company));
            }
            else if (CurrentSort == Contact.SortType.CompanyDESC)
            {
                lstContacts.Sort((a, b) => b.Company.CompareTo(a.Company));
            }

            if (CurrentSort == Contact.SortType.DateOfBirthASC)
            {
                lstContacts.Sort((a, b) => a.DateOfBirth.CompareTo(b.DateOfBirth));
            }
            else if (CurrentSort == Contact.SortType.DateOfBirthDESC)
            {
                lstContacts.Sort((a, b) => b.DateOfBirth.CompareTo(a.DateOfBirth));
            }

            if (CurrentSort == Contact.SortType.AddressASC)
            {
                lstContacts.Sort((a, b) => a.Address.CompareTo(b.Address));
            }
            else if (CurrentSort == Contact.SortType.AddressDESC)
            
            {
                lstContacts.Sort((a, b) => b.Address.CompareTo(a.Address));
            }
        }

        protected void sortButton_Click(object sender, EventArgs e)
        {
            string _sort = ((LinkButton)sender).CommandName;

            switch (_sort.ToLower())
            {
                case "forename":
                    this.CurrentSort =
                        this.CurrentSort == Contact.SortType.ForenameASC ?
                        Contact.SortType.ForenameDESC
                        :
                        Contact.SortType.ForenameASC;
                    break;
                case "surname":
                    this.CurrentSort =
                        this.CurrentSort == Contact.SortType.SurnameASC ?
                        Contact.SortType.SurnameDESC
                        :
                        Contact.SortType.SurnameASC;
                    break;
                case "town":
                    this.CurrentSort =
                        this.CurrentSort == Contact.SortType.TownASC ?
                        Contact.SortType.TownDESC
                        :
                        Contact.SortType.TownASC;
                break;
                case "county":
                this.CurrentSort =
                    this.CurrentSort == Contact.SortType.CountyASC ?
                    Contact.SortType.CountyDESC
                    :
                    Contact.SortType.CountyASC;
                break;
                case "company":
                    this.CurrentSort =
                        this.CurrentSort == Contact.SortType.CompanyASC ?
                        Contact.SortType.CompanyDESC
                        :
                        Contact.SortType.CompanyASC;
                    break;
                case "birthdate":
                    this.CurrentSort =
                        CurrentSort == Contact.SortType.DateOfBirthASC ?
                        Contact.SortType.DateOfBirthDESC
                        :
                        Contact.SortType.DateOfBirthASC;
                    break;
                case "address":
                    CurrentSort =
                        CurrentSort == Contact.SortType.AddressASC ?
                        Contact.SortType.AddressDESC
                        :
                        Contact.SortType.AddressASC;
                    break;
            }
            sortList();
            buildGui();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) {
                Contact c = new Contact();
                c.Forename = txtfname.Text.Trim();
                c.Surname = txtsname.Text.Trim();
                c.DateOfBirth = DateTime.Parse(txtDateOfBirth.Text.Trim());
                c.Company = txtcompany.Text.Trim();
                c.Address = txtAddress.Text.Trim();
                c.Town = txtTown.Text.Trim();
                c.County = txtCounty.Text.Trim();

                this.lstContacts.Add(c);
                buildGui();
                
            }
        }

        protected void valdob_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime dt;
            args.IsValid = DateTime.TryParse(txtDateOfBirth.Text.Trim(), out dt);
        }
    }
    #region Contact Class
    [Serializable]
    public class Contact
    {
        public enum SortType
        {
            AddressASC,
            AddressDESC,
            ForenameASC,
            ForenameDESC,
            SurnameASC,
            SurnameDESC,
            CompanyASC,
            CompanyDESC,
            CountyASC,
            CountyDESC,
            DateOfBirthASC,
            DateOfBirthDESC,
            TownDESC,
            TownASC
        }
        public Guid ID { get; private set; }
        public string Forename { get; set; }
        public string Surname { get; set; }
        public string Address { get; set; }
        public string Town { get; set; }
        public string County { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Company { get; set; }

        public Contact()
        {
            ID = System.Guid.NewGuid();
        }
    }
    #endregion
}