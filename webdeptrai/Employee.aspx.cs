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

        btnNew.Click += new EventHandler(btnNew_Click);
        btnSave.Click += new EventHandler(btnSave_Click);
        gridEmp.RowDataBound += new GridViewRowEventHandler(gridEmp_RowDataBound);
        gridEmp.SelectedIndexChanged += new EventHandler(gridEmp_SelectedIndexChanged);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        List<String> list = new List<string>();
        //list.Add(this.txtCategoryName.Text);
        //list.Add(this.txtDescription.Text);
        //new Categori().update(Int32.Parse(lblCateID.Text), list);
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }

    protected void gridEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        lblID.Text = gridEmp.SelectedRow.Cells[1].Text;
        txtFirstname.Text = gridEmp.SelectedRow.Cells[2].Text;
        txtLastName.Text= gridEmp.SelectedRow.Cells[3].Text;
        txtTitle.Text= gridEmp.SelectedRow.Cells[4].Text;
        txtCourse.Text= gridEmp.SelectedRow.Cells[5].Text;
        txtDateOfBirth.Text = gridEmp.SelectedRow.Cells[6].Text;
       
    }

 

    protected void gridEmp_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalEmp('" + e.Row.Cells[0].Text + "','" + e.Row.Cells[1].Text + "','" +
                e.Row.Cells[2].Text + "','" + e.Row.Cells[3].Text + "','" + e.Row.Cells[4].Text + "','" +
                e.Row.Cells[5].Text + "','" + e.Row.Cells[6].Text + "','" + e.Row.Cells[7].Text+"','"
                + e.Row.Cells[8].Text + "','" + e.Row.Cells[9].Text + "','" + e.Row.Cells[10].Text + "','"
                + e.Row.Cells[11].Text + "','" + e.Row.Cells[12].Text + "','" + e.Row.Cells[13].Text + "','"
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
