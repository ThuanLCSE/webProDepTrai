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

public partial class Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadCategories();
        gvCategories.RowDataBound += new GridViewRowEventHandler(gridEmp_RowDataBound);
    }
    protected void gridEmp_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalCat('" + Server.HtmlDecode(e.Row.Cells[0].Text) + "','" +
                  Server.HtmlDecode(  e.Row.Cells[1].Text )+ "','" + Server.HtmlDecode(e.Row.Cells[2].Text) + "');");
        }
    }
   
    void LoadCategories()
    {
        
        System.Data.SqlClient.SqlDataReader dr = (new Categori()).select();
        //gvCategories.AutoGenerateSelectButton = true;
        //gvCategories.AllowPaging = true;
        gvCategories.DataSource = dr;
        gvCategories.DataBind();
    }

    void AddCategory()
    {
        
       
    }

    void UpdateCategory()
    {
        List<String> list = new List<string>();
        list.Add(this.txtCategoryName.Text);
        list.Add(this.txtDescription.Text);
        if (lblCateID.Text.Equals("")) 
        
        new Categori().insert(list);
        else
            (new Categori()).update(Int32.Parse(this.lblCateID.Text), list);
        
    }

    void SearchCategory()
    {
        List<String> list = new List<string>();
        if (ddlSearch.SelectedValue.ToString().Equals("Category Name"))
        {
            list.Add(txtSearch.Text);
            list.Add("");
        }
        else
        {
            list.Add("");
            list.Add(txtSearch.Text);
        }
        SqlDataReader dr = new Categori().search(list);
        gvCategories.DataSource = null;
        gvCategories.DataSource = dr;
        gvCategories.DataBind();
    }

   

    protected void UpdateCate_Click(object sender, EventArgs e)
    {
        UpdateCategory();
        LoadCategories();
    }

    protected void DelteCate_Click(object sender, EventArgs e)
    {
        try
        {
            new Categori().delete(Int32.Parse(lblCateID.Text));
            LoadCategories();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert(\'Can not delete this category because it has in Product\');</script>"); 
        }
        
    }

    protected void Clear_Click(object sender, EventArgs e)
    {
        lblCateID.Text = "";
        txtCategoryName.Text = "";
        txtDescription.Text = "";
    }

    protected void gvCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = gvCategories.SelectedRow;
        lblCateID.Text = r.Cells[1].Text;
        txtCategoryName.Text = r.Cells[2].Text;
        txtDescription.Text = r.Cells[3].Text;
    }

    protected void btnSearchCate_Click(object sender, EventArgs e)
    {
        SearchCategory();
    }
    
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        LoadCategories();
    }
}
