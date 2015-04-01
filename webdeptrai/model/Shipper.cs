using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Project
{
    class Shipper:DTOabs
    {
        public Shipper()
        {
        }

        #region objectInterface Members

        public bool insert(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertShippers";
            cmd.Parameters.Clear();


            SqlParameter param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[1];
            cmd.Parameters.Add(param);

            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool update(int id, List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UpdateShippers";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool delete(int id)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DeleteShipper";
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
                MessageBox.Show("This supplier can not be delete");
            }
            return true;
       
        }

        public System.Data.SqlClient.SqlDataReader select()
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "selectShipper";
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SearchShippers";
            SqlParameter param;
            //= new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            param = new SqlParameter("@companyname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            if (str[1].Equals("(    )    -"))
                param.Value = "";
            else
                param.Value = str[1];
            cmd.Parameters.Add(param);
            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }
        #endregion
    }
}
