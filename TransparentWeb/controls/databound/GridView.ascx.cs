using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using transparent.controls.databound.classes;

namespace transparent.controls.databound
{
    public partial class GridView : transparent.include.classes.BaseControl
    {
        protected List<Car> Cars{
            get{
                if (ViewState["CarList"] == null){
                    this.Cars = Car.GetList();
                    return (List<Car>)ViewState["CarList"];
                }
                else{
                    return (List<Car>)ViewState["CarList"];
                }
            }
            set{
                ViewState["CarList"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e){
            if (!Page.IsPostBack){
               bindGridView();
            }
        }
    
        private void bindGridView(){
            GridView1.DataSource = this.Cars;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e){
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            lOut.Text+=("<br/>Updating Car #" + ((Literal)GridView1.Rows[e.RowIndex].FindControl("litVin")).Text + " to " + ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtMake")).Text);

            GridView1.EditIndex = -1;
            bindGridView();
        }

        protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int x = e.RowIndex; 
            lOut.Text += "<br/>Deleting Car #" + ((Literal)GridView1.Rows[e.RowIndex].FindControl("litVin")).Text;
            bindGridView();
        }

    }
}