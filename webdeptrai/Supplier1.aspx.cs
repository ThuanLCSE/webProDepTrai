using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class Supplier1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadSupplier();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalSup('" + e.Row.Cells[0].Text + "','" + e.Row.Cells[1].Text + "','" +
                e.Row.Cells[2].Text + "','" + e.Row.Cells[3].Text + "','" + e.Row.Cells[4].Text + "','" + e.Row.Cells[5].Text + "','" + e.Row.Cells[6].Text + "','" + e.Row.Cells[7].Text + "','" + e.Row.Cells[8].Text + "','" + e.Row.Cells[9].Text + "','" + 
                e.Row.Cells[10].Text + "');" );
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView1.SelectedRow;
        lblSupID.Text = r.Cells[1].Text;
        txtSupplierName.Text = r.Cells[2].Text;
        txtContactName.Text = r.Cells[3].Text;
        txtContactTilte.Text = r.Cells[4].Text;
        txtAddress.Text=r.Cells[5].Text;
        txtCity.Text=r.Cells[6].Text;
        txtRegion.Text=r.Cells[7].Text;
        txtPostal.Text=r.Cells[8].Text;
        txtCountry.Text=r.Cells[9].Text;
        txtPhone.Text=r.Cells[10].Text;
        txtFax.Text=r.Cells[11].Text;
    }
    protected void LoadSupplier() {
        SqlDataReader dr = (new Supplier()).select();

 

        GridView1.DataSource = dr;
        GridView1.DataBind();
    }
    protected void DeleteSupplier() {
        if (lblSupID.Text != "")
        {
            new Supplier().delete(Int32.Parse(lblSupID.Text));

            LoadSupplier();
        }
        else
            Response.Write("<script language=\"javascript\">alert(\'Select before delete!!!\');</script>");
   
    }
    protected void SearchSupplier() {
        List<String> list = new List<string>();

        if (ddlSearch.SelectedValue.ToString().Equals("Company name"))
        {
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Contact name"))
        {
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Contact Tilte"))
        {
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Address"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("City"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Region"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Postal code"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Country"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Phone"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Fax"))
        {
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add(txtSearch.Text);
            
        }
        SqlDataReader dr = new Supplier().search(list);
        GridView1.DataSource = null;
        GridView1.DataSource = dr;
        GridView1.DataBind();
    }
    
   
    protected void UpdateCate_Click(object sender, EventArgs e)
    {
        List<String> list = new List<string>();
        list.Add(this.txtSupplierName.Text);
        list.Add(this.txtContactName.Text);
        list.Add(this.txtContactTilte.Text);
        list.Add(this.txtAddress.Text);
        list.Add(this.txtCity.Text);
        list.Add(this.txtRegion.Text);
        list.Add(this.txtPostal.Text);
        list.Add(this.txtCountry.Text);
        list.Add(this.txtPhone.Text);
        list.Add(this.txtFax.Text);
        if (lblSupID.Text.Equals(""))
            new Supplier().insert(list);
        else
        new Supplier().update(Int32.Parse(lblSupID.Text), list);
        LoadSupplier();
    }
    protected void DelteCate_Click(object sender, EventArgs e)
    {
        DeleteSupplier();
        LoadSupplier();
    }
   
    protected void btnSearchCate_Click(object sender, EventArgs e)
    {
        SearchSupplier();
      
    }
}
