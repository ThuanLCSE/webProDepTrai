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
using System.Collections.Generic;
using System.Data.SqlClient;

public partial class Shipper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadShipper();
        gvShipper.RowDataBound += new GridViewRowEventHandler(gvShipper_RowDataBound);
    }

    protected void gvShipper_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell c in e.Row.Cells)
                c.Attributes.Add("onclick", "return showModalShi('" + e.Row.Cells[0].Text + "','" 
                    + e.Row.Cells[1].Text + "','" +
                e.Row.Cells[2].Text  + "');");
        }
    }

    protected void gvShipper_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow r = gvShipper.SelectedRow;
        lblShipperID.Text = r.Cells[1].Text;
        txtCompanyName.Text = r.Cells[2].Text;
        txtPhone.Text = r.Cells[3].Text;
    }

    void LoadShipper()
    {
        SqlDataReader dr = (new Shipper1()).select();
        gvShipper.DataSource = dr;
        gvShipper.DataBind();
        dr.Close();
    }

    void AddShipper()
    {
        List<String> list = new List<string>();
        list.Add(this.txtCompanyName.Text);
        list.Add(this.txtPhone.Text);
        new Shipper1().insert(list);
    }

    void UpdateShipper()
    {
        GridViewRow r = gvShipper.SelectedRow;
        List<String> list = new List<string>();
        list.Add(this.txtCompanyName.Text);
        list.Add(this.txtPhone.Text);
        new Shipper1().update(Int32.Parse(lblShipperID.Text), list);
    }

    void DeleteShipper()
    {
        if (lblShipperID.Text != "")
        {
            new Shipper1().delete(Int32.Parse(lblShipperID.Text));
            LoadShipper();
        }
        else
            Response.Write("<script language=\"javascript\">alert(\'Select before delete!!!\');</script>");
    }

    void Search()
    {
        List<String> list = new List<string>();
        if (ddlSearch.SelectedValue.ToString().Equals("Company Name"))
        {
            
            list.Add(txtSearch.Text);
            list.Add("");
           
        }
        else
        {
            list.Add("");
            list.Add(txtSearch.Text);
          
        }
        SqlDataReader dr = new Shipper1().search(list);
        gvShipper.DataSource = null;
        gvShipper.DataSource = dr;
        gvShipper.DataBind();
    }


    //Thêm Shipper
    protected void btnAddShipper_Click(object sender, EventArgs e)
    {
        AddShipper();
        LoadShipper();
    }


    //Cập nhật Shipper
    protected void btnUpdateShipper_Click(object sender, EventArgs e)
    {
       
        List<String> list = new List<string>();
        list.Add(this.txtCompanyName.Text);
        list.Add(this.txtPhone.Text);
        bool rs = false;

        if (lblShipperID.Text != "")
        {
            rs = new Shipper1().update(Int32.Parse(lblShipperID.Text), list);

        }
        else
            rs = new Shipper1().insert(list);
        if (rs)
            Response.Write("<script language=\"javascript\">alert(\'Successful\');</script>"); 
       
        LoadShipper();
    }


    //Xóa Shipper
    protected void btnDelteShipper_Click(object sender, EventArgs e)
    {
        DeleteShipper();
        LoadShipper();
    }

    protected void btnClearShipper_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearchShipper_Click(object sender, EventArgs e)
    {
        Search();
        LoadShipper();
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {

    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        LoadShipper();
    }
}
