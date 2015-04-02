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

namespace ProjectWeb
{
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCategories();
        }

        void LoadCategories()
        {
            SqlDataReader dr = (new Categori()).select();
            gvCategories.AutoGenerateSelectButton = true;
            //gvCategories.AllowPaging = true;
            gvCategories.DataSource = dr;
            gvCategories.DataBind();
        }

        void AddCategory()
        {
            List<String> list = new List<string>();
            list.Add(this.txtCategoryName.Text);
            list.Add(this.txtDescription.Text);
            new Categori().insert(list);
        }

        void UpdateCategory()
        {
            List<String> list = new List<string>();
            list.Add(this.txtCategoryName.Text);
            list.Add(this.txtDescription.Text);
            new Categori().update(Int32.Parse(lblCateID.Text), list);
        }

        void SearchCategory()
        {
            List<String> list = new List<string>();
            list.Add(this.txtCategoryName.Text);
            list.Add(this.txtDescription.Text);
            SqlDataReader dr = new Categori().search(list);
            gvCategories.DataSource = dr;
            gvCategories.DataBind();
        }

        protected void AddCate_Click(object sender, EventArgs e)
        {
            AddCategory();
            LoadCategories();
        }

        protected void UpdateCate_Click(object sender, EventArgs e)
        {
            UpdateCategory();
            LoadCategories();
        }

        protected void DelteCate_Click(object sender, EventArgs e)
        {
            new Categori().delete(Int32.Parse(lblCateID.Text));
            LoadCategories();
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
            if (ddlSearch.SelectedValue.ToString().Equals("Category Name"))
            {
                List<String> list = new List<string>();
                list.Add(txtSearch.Text);
                list.Add("");
                SqlDataReader dr = new Categori().search(list);
                gvCategories.DataSource = null;
                gvCategories.DataSource = dr;
                gvCategories.DataBind();
            }
            else
            {
                List<String> list = new List<string>();
                list.Add("");
                list.Add(txtSearch.Text);
                SqlDataReader dr = new Categori().search(list);
                gvCategories.DataSource = null;
                gvCategories.DataSource = dr;
                gvCategories.DataBind();
            }
        }

    }
}
