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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadTable();

        btnNew.Click += new EventHandler(btnNew_Click);
        gridEmp.RowDataBound += new GridViewRowEventHandler(gridEmp_RowDataBound);
        gridEmp.SelectedIndexChanged += new EventHandler(gridEmp_SelectedIndexChanged);
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
            e.Row.Cells[0].Attributes.Add("onclick", "return showModal();");
        }
    }
    protected void LoadTable()
    {
        employee e = new employee();
        SqlDataReader dr = (new employee()).select();
        gridEmp.DataSource = dr;

        gridEmp.DataBind();
        dr.Close();
    }
}
