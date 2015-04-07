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

public partial class Order : System.Web.UI.Page
{
    List<string> product;
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadOrder();
        product = new List<string>();
        gvOrder.RowDataBound += new GridViewRowEventHandler(gvOrder_RowDataBound);
        gvOrderDetail.RowDataBound += new GridViewRowEventHandler(gvOrderDetail_RowDataBound);
    }

   
    
   protected void btnUpdateDetail2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in gvOrderDetail.Rows)
            product.Add(r.Cells[1].Text);
            List<String> list = new List<string>();
            list.Add(this.DDLProductname.SelectedValue.ToString());
            list.Add(this.txtUnitDetail.Text);
            list.Add(this.txtQuantilyDetail.Text);
            list.Add(this.txtDiscountDetail.Text);
            try
            {
                if (product.IndexOf(DDLProductname.SelectedValue.ToString()) != -1)
                {

                    new orderDetail().update(int.Parse(lblOrderID.Text), list);
                }
                else new orderDetail().insert(int.Parse(lblOrderID.Text), list);
            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert(\'" + ex.Message + "\');</script>");

            }
            System.Data.SqlClient.SqlDataReader dr = (new orderDetail()).searchByID(int.Parse(lblOrderID.Text));
            gvOrderDetail.DataSource = dr;
            gvOrderDetail.DataBind();
            dr.Close();
        

    }

    protected void btnDeleteDetail_Click(object sender, EventArgs e)
    {
        if (lblOrderID.Text != "")
        {
            new orderDetail().delete(Int32.Parse(DDLProductname.SelectedValue.ToString()));

        }
        else
            Response.Write("<script language=\"javascript\">alert(\'Select row before delete!!!\');</script>");
    }

    protected void gvOrderDetail_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalOrdDet('"
                    + Server.HtmlDecode(e.Row.Cells[0].Text)
                   + "','" + Server.HtmlDecode(e.Row.Cells[1].Text)
                + "','" + Server.HtmlDecode(e.Row.Cells[2].Text) + "','" +
               Server.HtmlDecode(e.Row.Cells[3].Text) + "','" + Server.HtmlDecode(e.Row.Cells[4].Text) + "','" +
                 "');");
        }
    }

    protected void gvOrder_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
          
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalOrd('"
                    +Server.HtmlDecode( e.Row.Cells[0].Text)
                   + "','" + Server.HtmlDecode(e.Row.Cells[1].Text)+ "','"
                + Server.HtmlDecode(e.Row.Cells[2].Text) + "','" + DateTime.Parse(e.Row.Cells[3].Text).ToShortDateString() + "','" +
                DateTime.Parse(e.Row.Cells[4].Text).ToShortDateString() + "','" +
                DateTime.Parse(e.Row.Cells[5].Text).ToShortDateString() + "','"
                +Server.HtmlDecode( e.Row.Cells[6].Text) + "','" + Server.HtmlDecode(e.Row.Cells[7].Text) + "','"
                + Server.HtmlDecode(e.Row.Cells[8].Text )+ "','" + Server.HtmlDecode(e.Row.Cells[9].Text) + "','" +
                Server.HtmlDecode(e.Row.Cells[10].Text) + "','"  + Server.HtmlDecode(e.Row.Cells[11].Text) + "','" + 
                Server.HtmlDecode(e.Row.Cells[12].Text) +"','" + Server.HtmlDecode(e.Row.Cells[13].Text ) + "');");
        }
    }
    protected void LoadDetail(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlDataReader dr = (new orderDetail()).searchByID(int.Parse(lblOrderID.Text));
        
        gvOrderDetail.DataSource = dr;
        gvOrderDetail.DataBind();
        dr.Close();
    }

 
    void LoadOrder()
    {
        
        System.Data.SqlClient.SqlDataReader dr = (new order()).select();
        //gvCategories.AllowPaging = true;
        gvOrder.DataSource = dr;
        gvOrder.DataBind();
        dr.Close();
    }

  

    void UpdateOrder()
    {
        List<String> list = new List<string>();
        //lblOrderID.Text = DDLCus.SelectedItem.Value;
        list.Add(DDLCus.SelectedValue.ToString());
        list.Add(DDLEmp.SelectedValue.ToString());
        list.Add(txtOrderDate.Text);
        list.Add(txtRequireDate.Text);
        list.Add(txtShippedDate.Text);
        //lblOrderID.Text = this.DDLShippername.SelectedValue.ToString();
        list.Add(DDLShippername.SelectedValue.ToString());
        list.Add(txtFreight.Text);
        list.Add(txtShipName.Text);
        list.Add(txtShipAdd.Text);
        list.Add(txtShipCity.Text);
        list.Add(txtShipRegion.Text);
        list.Add(txtShipPostalCode.Text);
        list.Add(txtShipCountry.Text);
        bool rs = new order().update(int.Parse(lblOrderID.Text), list);
        if (rs)
            Response.Write("<script language=\"javascript\">alert(\'update successful\');</script>"); 
    }

    void SearchOrder()
    {
        List<String> list = new List<string>();
        if (ddlSearch.SelectedValue.ToString().Equals("Product Name"))
        {
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
            list.Add("");
          
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Supplier id"))
        {
            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
            list.Add("");
         
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Category id"))
        {
            list.Add("");

            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
            list.Add("");
          
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Unit Price"))
        {
            list.Add("");

            list.Add("");

            list.Add("");
            list.Add(txtSearch.Text);
            list.Add("");
           
        }
        if (ddlSearch.SelectedValue.ToString().Equals("Discontinued"))
        {
           
            list.Add("");

            list.Add("");

            list.Add("");

            list.Add("");
            list.Add(txtSearch.Text);
         
        }
        SqlDataReader dr = new order().search(list);
        gvOrder.DataSource = null;
        gvOrder.DataSource = dr;
        gvOrder.DataBind();
    }


    protected void UpdateOrder_Click(object sender, EventArgs e)
    {
        List<String> list = new List<string>();
        //lblOrderID.Text = DDLCus.SelectedItem.Value;
        list.Add(DDLCus.SelectedValue.ToString());
        list.Add(DDLEmp.SelectedValue.ToString());
        list.Add(txtOrderDate.Text);
        list.Add(txtRequireDate.Text);
        list.Add(txtShippedDate.Text);
        //lblOrderID.Text = this.DDLShippername.SelectedValue.ToString();
        list.Add(DDLShippername.SelectedValue.ToString());
        list.Add(txtFreight.Text);
        list.Add(txtShipName.Text);
        list.Add(txtShipAdd.Text);
        list.Add(txtShipCity.Text);
        list.Add(txtShipRegion.Text);
        list.Add(txtShipPostalCode.Text);
        list.Add(txtShipCountry.Text);
        bool rs=false;
       
        if (lblOrderID.Text != "")
        {
            rs = new order().update(int.Parse(lblOrderID.Text), list);
           
        }
        else
            rs = new order().insert( list);
         if (rs)
            Response.Write("<script language=\"javascript\">alert(\'Successful\');</script>"); 
         LoadOrder();
    }
   

    protected void DelteOrder_Click(object sender, EventArgs e)
    {
        if (lblOrderID.Text != "")
        {
            new order().delete(Int32.Parse(lblOrderID.Text));
            LoadOrder();
        }
        else
            Response.Write("<script language=\"javascript\">alert(\'Select before delete!!!\');</script>");
    }

    protected void Clear_Click(object sender, EventArgs e)
    {
        lblOrderID.Text = "";
        this.DDLCus.SelectedIndex= 0;
        this.DDLEmp.SelectedIndex = 0;
        txtOrderDate.Text = "";
        txtRequireDate.Text = "";
        txtShippedDate.Text = "";
        this.DDLShippername.SelectedIndex = 0;
        txtFreight.Text = "";
        txtShipName.Text = "";
        txtShipAdd.Text = "";
        txtShipCity.Text = "";
        txtShipRegion.Text = "";
        txtShipPostalCode.Text = "";
        txtShipCountry.Text = "";
        LoadOrder();
    }

   

    protected void btnSearchOrder_Click(object sender, EventArgs e)
    {
        if (ddlSearch.SelectedValue.ToString().Equals("Customer Name"))
            searchwith("Customers.companyname");
        if (ddlSearch.SelectedValue.ToString().Equals("Employee Name"))
            searchwith("Employees.lastname + ' ' + Employees.firstname");
        if (ddlSearch.SelectedValue.ToString().Equals("Shipper Name"))
            searchwith("Shippers.companyname");
        if (ddlSearch.SelectedValue.ToString().Equals("Freight"))
            searchwith("Orders.freight");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship Name"))
            searchwith("Orders.shipname");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship Address"))
            searchwith("Orders.shipaddress");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship City"))
            searchwith("Orders.shipcity");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship Region"))
            searchwith("Orders.shipregion");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship Postal Code"))
            searchwith("Orders.shippostalcode");
        if (ddlSearch.SelectedValue.ToString().Equals("Ship Country"))
            searchwith("Orders.shipcountry");
        if (ddlSearch.SelectedValue.ToString().Equals("Order Date"))
            searchwith("CONVERT(VARCHAR(10), Orders.orderdate, 101)");
        if (ddlSearch.SelectedValue.ToString().Equals("Require Date"))
            searchwith("CONVERT(VARCHAR(10), Orders.requireddate, 101)");
        if (ddlSearch.SelectedValue.ToString().Equals("Shipped Date"))
            searchwith("CONVERT(VARCHAR(10), Orders.shippeddate, 101)");

    }

    void searchwith(string type)
    {
        //<asp:Button CausesValidation="False" />
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=.;database=TSQLFundamentals2008;uid=sa;pwd=123456";

        //Default select

        string sql = "SELECT "+
            "Orders.orderid," +
            "Customers.companyname," +
            "Employees.lastname + ' ' + Employees.firstname as fullname ," +
            "CONVERT(VARCHAR(10), Orders.orderdate, 101)," +
            "CONVERT(VARCHAR(10), Orders.requireddate, 101)," +
            "CONVERT(VARCHAR(10), Orders.shippeddate, 101)," +
            "Shippers.companyname," +
            "Orders.freight," +
            "Orders.shipname," +
            "Orders.shipaddress," +
            "Orders.shipcity," +
            "Orders.shipregion," +
            "Orders.shippostalcode," +
            "Orders.shipcountry" +
            " FROM Sales.Orders,Sales.Customers,Sales.Shippers,HR.Employees " +
            " WHERE " +
            "(Orders.custid = Customers.custid) and" +
            "(Orders.empid = Employees.empid) and" +
            "(Orders.shipperid = Shippers.shipperid) and ";
        //
        if (type.Equals("Customers.companyname"))
        {
            sql +=  type +" LIKE N'%" + txtSearch.Text + "%'" ;
        }
        if (type.Equals("Employees.lastname + ' ' + Employees.firstname"))
        {
            sql += type+ " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Shippers.companyname"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.freight"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shipname"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shipaddress"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shipcity"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shipregion"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shippostalcode"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("Orders.shipcountry"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("CONVERT(VARCHAR(10), Orders.orderdate, 101)"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("CONVERT(VARCHAR(10), Orders.requireddate, 101)"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        if (type.Equals("CONVERT(VARCHAR(10), Orders.shippeddate, 101)"))
        {
            sql += type + " LIKE N'%" + txtSearch.Text + "%'";
        }
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        adapter.Dispose();

        gvOrder.DataSource = dt;
        gvOrder.DataBind();
        
    }
}