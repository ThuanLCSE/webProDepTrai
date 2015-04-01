using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Project
{
    class customer:DTOabs
    {
        
        public customer():base()
        {
            
        }
        #region objectInterface Members

        public bool insert(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertCustomers";
            cmd.Parameters.Clear();


            SqlParameter param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@contactname", SqlDbType.VarChar, 30);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@contacttitle", SqlDbType.VarChar, 30);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@postalcode", SqlDbType.VarChar,10);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@fax", SqlDbType.VarChar, 24);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool update(int id, List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UpdateCustomer";
            cmd.Parameters.Clear();
            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@contactname", SqlDbType.VarChar, 30);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@contacttitle", SqlDbType.VarChar, 30);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@postalcode", SqlDbType.VarChar, 10);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@fax", SqlDbType.VarChar, 24);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool delete(int id)
        {
            try
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteCustomer";
                cmd.Parameters.Clear();
                SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
                param.Value = id;
                cmd.Parameters.Add(param);
                //

                cmd.ExecuteNonQuery();
                closeConnection();
            }
            catch (Exception e)
            {
                MessageBox.Show("This customer can not be delete");
            }
            return true;

        }

        public  SqlDataReader select()
        {
          cmd.CommandType = CommandType.StoredProcedure;
          cmd.CommandText = "selectCustomer";
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SearchCustomers";
            SqlParameter param; //= new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@contactname", SqlDbType.VarChar, 30);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@contacttitle", SqlDbType.VarChar, 30);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@postalcode", SqlDbType.VarChar, 10);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            if (str[8].Equals("(    )    -"))
                param.Value = "";
            else
                param.Value = str[8];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@fax", SqlDbType.VarChar, 24);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            //
            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }

        #endregion
    }
}
