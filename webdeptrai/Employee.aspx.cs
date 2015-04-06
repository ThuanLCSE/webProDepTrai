using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadTable();
        
       // btnNew.Click += new EventHandler(btnNew_Click);
        btnDel.Click += new EventHandler(btnDel_Click);
        btnSave.Click += new EventHandler(btnSave_Click);
        btnSearch.Click += new EventHandler(btnSearch_Click);
        gridEmp.RowDataBound += new GridViewRowEventHandler(gridEmp_RowDataBound);
        gridEmp.SelectedIndexChanged += new EventHandler(gridEmp_SelectedIndexChanged);
    }

    void btnSearch_Click(object sender, EventArgs e)
    {
        List<String> list = new List<string>();
        if (DDLSearch.SelectedValue.ToString().Equals("Last Name"))
        {
            list.Add(txtSearch.Text);
            list.Add("");
         
        }
        else if (DDLSearch.SelectedValue.ToString().Equals("First Name"))
            {
                list.Add("");
                list.Add(txtSearch.Text);
               
            }
      
        SqlDataReader dr = new employee().search(list);
        gridEmp.DataSource = null;
        gridEmp.DataSource = dr;
        gridEmp.DataBind();
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        if (lblID.Text != "")
        {
            new employee().delete(Int32.Parse(lblID.Text));
            LoadTable();
        }
        else
            Response.Write("<script language=\"javascript\">alert(\'Select before delete!!!\');</script>");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        List<String> list = new List<string>();
        list.Add(this.txtFirstname.Text);
        list.Add(this.txtLastName.Text);
        list.Add(this.txtTitle.Text);
        list.Add(txtCourse.Text);
        list.Add(txtDateOfBirth.Text);
        list.Add(txtHireDate.Text);
        list.Add(txtAddress.Text);
        list.Add(txtCity.Text);
        list.Add(txtRegion.Text);
        list.Add(TxtPost.Text);
        list.Add(txtCoun.Text);
        list.Add(txtPhone.Text);
        list.Add(txtMgrid.Text);

        if (lblID.Text.Equals(""))

            new employee().insert(list);
     
        else
        new employee().update(Int32.Parse(lblID.Text), list);

        LoadTable();
    }

  

    protected void gridEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
       
    }

 

    protected void gridEmp_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalEmp('" + Server.HtmlDecode(e.Row.Cells[0].Text) + "','" + Server.HtmlDecode(e.Row.Cells[1].Text) + "','" +
                Server.HtmlDecode(e.Row.Cells[2].Text) + "','" + Server.HtmlDecode(e.Row.Cells[3].Text) + "','" + Server.HtmlDecode(e.Row.Cells[4].Text) + "','" +
                DateTime.Parse( e.Row.Cells[5].Text).ToShortDateString() + "','" 
                +DateTime.Parse( e.Row.Cells[6].Text).ToShortDateString() + "','" + Server.HtmlDecode(e.Row.Cells[7].Text)+"','"
                + Server.HtmlDecode(e.Row.Cells[8].Text) + "','" + Server.HtmlDecode(e.Row.Cells[9].Text) + "','" + Server.HtmlDecode(e.Row.Cells[10].Text) + "','"
                + Server.HtmlDecode(e.Row.Cells[11].Text) + "','" + Server.HtmlDecode(e.Row.Cells[12].Text) + "','" + Server.HtmlDecode(e.Row.Cells[13].Text) + "','"
                +"');");
        }
    }
    protected void LoadTable()
    {
        SqlDataReader dr = (new employee()).select();
        gridEmp.DataSource = dr;

        gridEmp.DataBind();
        dr.Close();
    }
}
