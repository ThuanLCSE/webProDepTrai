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
        gvShipper.AutoGenerateSelectButton = true;
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
        if (ddlSearch.SelectedValue.ToString().Equals("Company Name"))
        {
            List<String> list = new List<string>();
            list.Add(txtSearch.Text);
            list.Add("");
            SqlDataReader dr = new Shipper1().search(list);
            gvShipper.DataSource = null;
            gvShipper.DataSource = dr;
            gvShipper.DataBind();
        }
        else
        {
            List<String> list = new List<string>();
            list.Add("");
            list.Add(txtSearch.Text);
            SqlDataReader dr = new Shipper1().search(list);
            gvShipper.DataSource = null;
            gvShipper.DataSource = dr;
            gvShipper.DataBind();
        }
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
        UpdateShipper();
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

    }
    protected void btnNew_Click(object sender, EventArgs e)
    {

    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        LoadShipper();
    }
}
