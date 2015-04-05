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

public partial class product1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadProduct();
        GridView1.RowDataBound += new GridViewRowEventHandler(GridView1_RowDataBound);
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalPro('" + e.Row.Cells[0].Text + "','" + e.Row.Cells[1].Text + "','" +
                e.Row.Cells[2].Text + "','" + e.Row.Cells[3].Text + "','" + e.Row.Cells[4].Text + "','" +
                e.Row.Cells[5].Text  + "');");
        }
    }
    void LoadProduct()
    {
        SqlDataReader dr = (new products()).select();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Close();
    }

    void AddProduct()
    {
        List<String> list = new List<string>();
        list.Add(this.txtProductName.Text);
        list.Add(this.DropDownList3.SelectedItem.Value);
        list.Add(this.DropDownList2.SelectedItem.Value);
        list.Add(this.txtUnitPrice.Text);
        list.Add(this.RadioButtonList1.SelectedItem.Text);

        new products().insert(list);
    }

    void UpdateProduct()
    {
        List<String> list = new List<string>();
        list.Add(this.txtProductName.Text);
        list.Add(this.DropDownList3.SelectedItem.Value);
        list.Add(this.DropDownList2.SelectedItem.Value);
        list.Add(this.txtUnitPrice.Text);
        list.Add(this.RadioButtonList1.SelectedItem.Text);
        new products().update(Int32.Parse(lblProID.Text), list);
    }

    void SearchProduct()
    {
        if (ddlSearch.SelectedValue.ToString().Equals("Product Name"))
        {
            List<String> list = new List<string>();
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
            SqlDataReader dr = new products().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Supplier name"))
        {
            
            string t =""+DropDownList3.Items.FindByText(txtSearch.Text).Value;
            List<String> list = new List<string>();
            list.Add("");
            list.Add(t);
            list.Add("");
            list.Add("");
            list.Add("");
            SqlDataReader dr = new products().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Category name"))
        {
            string t = "" + (DropDownList2.Items.FindByText(txtSearch.Text)).Value;
            txtProductName.Text = t;
            List<String> list = new List<string>();
            list.Add("");

            list.Add("");
            list.Add(t);
            list.Add("");
            list.Add("");
            SqlDataReader dr = new products().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Unit Price"))
        {
            List<String> list = new List<string>();
            list.Add("");

            list.Add("");

            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            SqlDataReader dr = new products().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Discontinued"))
        {
            List<String> list = new List<string>();
            list.Add("");

            list.Add("");

            list.Add("");

            list.Add("");
            list.Add(txtSearch.Text);
            SqlDataReader dr = new products().search(list);
            GridView1.DataSource = null;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }

    protected void AddCate_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Validate();
        RequiredFieldValidator2.Validate();
        RegularExpressionValidator1.Validate();
        RequiredFieldValidator3.Validate();
        AddProduct();
        LoadProduct();
    }

    protected void UpdateCate_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Validate();
        RequiredFieldValidator2.Validate();
        RegularExpressionValidator1.Validate();
        RequiredFieldValidator3.Validate();
        UpdateProduct();
        LoadProduct();
    }
    protected void deleteProduct()
    {
        new products().delete(Int32.Parse(lblProID.Text));
    }

    protected void DelteCate_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator2.ValidationGroup = "txtProductName";
        deleteProduct();
        LoadProduct();
    }

    protected void Clear_Click(object sender, EventArgs e)
    {
        lblProID.Text = "";
        txtUnitPrice.Text = "";
        txtProductName.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       GridViewRow r = GridView1.SelectedRow;
        DropDownList2.SelectedIndex  = DropDownList2.Items.IndexOf(DropDownList2.Items.FindByValue(r.Cells[4].Text));
        DropDownList3.SelectedIndex = DropDownList3.Items.IndexOf(DropDownList3.Items.FindByValue(r.Cells[3].Text));
        
        lblProID.Text = r.Cells[1].Text;
        txtProductName.Text = r.Cells[2].Text;
        txtUnitPrice.Text = r.Cells[5].Text;
        bool check=((System.Web.UI.WebControls.CheckBox)r.Cells[6].Controls[0]).Checked;
        if (check)
        RadioButtonList1.SelectedIndex = 0;
        else RadioButtonList1.SelectedIndex = 1;
    }

    protected void btnSearchCate_Click(object sender, EventArgs e)
    {
        SearchProduct();
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

      
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}

