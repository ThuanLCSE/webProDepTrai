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
        
        gridEmp.RowDataBound += new GridViewRowEventHandler(gridEmp_RowDataBound);

    }

 

    protected void gridEmp_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
            c.Attributes.Add("onclick", "return showModal();");
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
