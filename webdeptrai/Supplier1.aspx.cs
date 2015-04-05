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

        GridView1.AutoGenerateSelectButton = true;

        GridView1.DataSource = dr;
        GridView1.DataBind();
    }
    protected void DeleteSupplier() {
        new Supplier().delete(Int32.Parse(lblSupID.Text));
    }
    protected void SearchSupplier() {
        if (ddlSearch.SelectedValue.ToString().Equals("Company name"))
        {
            List<String> list = new List<string>();
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Contact name"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Contact tilte"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Address"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("City"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Region"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Postal code"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Country"))
        {
            List<String> list = new List<string>();
           
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Phone"))
        {
            List<String> list = new List<string>();
           
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Fax"))
        {
            List<String> list = new List<string>();
            
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
            SqlDataReader dr = new Supplier().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
       
    }
    protected void UpdateSupplier() {
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
        new Supplier().update(Int32.Parse(lblSupID.Text), list);
    }
    protected void AddCate_Click(object sender, EventArgs e)
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


        new Supplier().insert(list);
        LoadSupplier();
    }
    protected void UpdateCate_Click(object sender, EventArgs e)
    {
        UpdateSupplier();
        LoadSupplier();
    }
    protected void DelteCate_Click(object sender, EventArgs e)
    {
        DeleteSupplier();
        LoadSupplier();
    }
    protected void Clear_Click(object sender, EventArgs e)
    {
        lblSupID.Text = "";
        txtSupplierName.Text = "";
        txtContactName.Text = "";
        txtContactTilte.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        txtRegion.Text = "";
        txtPostal.Text = "";
        txtCountry.Text = "";
        txtPhone.Text = "";
        txtFax.Text = "";
        LoadSupplier();
    }
    protected void btnSearchCate_Click(object sender, EventArgs e)
    {
        SearchSupplier();
      
    }
}
