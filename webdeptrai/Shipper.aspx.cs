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
    public partial class Shipper1 : System.Web.UI.Page
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
            SqlDataReader dr = (new Shipper()).select();
            gvShipper.AutoGenerateSelectButton = true;
            gvShipper.DataSource = dr;
            gvShipper.DataBind();
        }

        void AddShipper()
        {
            List<String> list = new List<string>();
            list.Add(this.txtCompanyName.Text);
            list.Add(this.txtPhone.Text);
            new Shipper().insert(list);
        }

        void UpdateShipper()
        {
            GridViewRow r = gvShipper.SelectedRow;
            List<String> list = new List<string>();
            list.Add(this.txtCompanyName.Text);
            list.Add(this.txtPhone.Text);
            new Shipper().update(Int32.Parse(lblShipperID.Text), list);
        }

        void DeleteShipper()
        {
            if (lblShipperID.Text != "")
            {
                new Shipper().delete(Int32.Parse(lblShipperID.Text));
            }
            
        }

        protected void btnAddShipper_Click(object sender, EventArgs e)
        {
            AddShipper();
            LoadShipper();
        }

        protected void btnUpdateShipper_Click(object sender, EventArgs e)
        {
            UpdateShipper();
            LoadShipper();
        }

        protected void btnDelteShipper_Click(object sender, EventArgs e)
        {

        }

        protected void btnClearShipper_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearchShipper_Click(object sender, EventArgs e)
        {

        }
    }
}
