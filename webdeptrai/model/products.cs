using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Project
{
    class products:DTOabs
    {
        public products():base()
        {
        }
        #region objectInterface Members

        public bool insert(List<string> str)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertProduct";
            cmd.Parameters.Clear();

            SqlParameter  param = new SqlParameter("@productname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@supplierid", SqlDbType.Int);
            param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@categoryid", SqlDbType.Int);
            param.Value = Int32.Parse(str[2]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@unitprice", SqlDbType.Money);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@discontinued", SqlDbType.Bit);
            param.DbType = System.Data.DbType.Boolean;
            param.Value = Boolean.Parse(str[4]);
            cmd.Parameters.Add(param);



            //
            cmd.ExecuteNonQuery();
            closeConnection();
             }
            catch (Exception e)
            {
                MessageBox.Show("This product can not be inserted");
            }
            return true;
        }


        public bool update(int id, List<string> str)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UpdateProduct";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@productname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@supplierid", SqlDbType.Int);
            param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@categoryid", SqlDbType.Int);
            param.Value = Int32.Parse(str[2]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@unitprice", SqlDbType.Money);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@discontinued", SqlDbType.Bit);
            param.DbType = System.Data.DbType.Boolean;
            param.Value = Boolean.Parse(str[4]);
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
                      }
            catch (Exception e)
            {
                MessageBox.Show("This product can not be updated");
            }
          
            return true;
        }

        public bool delete(int id)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DeleteProduct";
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
                MessageBox.Show("This product can not be updated");
            }
            return true;
        }

        public SqlDataReader select()
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "selectProduct";
            SqlDataReader dr = cmd.ExecuteReader();
            //closeConnection();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "searchProduct";
            SqlParameter param;// = new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            param = new SqlParameter("@productname", SqlDbType.VarChar, 40);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@supplierid", SqlDbType.Int);
            if (str[1].Equals(""))
                param.Value = DBNull.Value;
            else
                param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@categoryid", SqlDbType.Int);
            if (str[2].Equals("0"))
                param.Value = DBNull.Value;
            else
                param.Value = Int32.Parse(str[2]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@unitprice", SqlDbType.Money);
            if (str[3].Equals(""))
                param.Value = DBNull.Value;
            else
                param.Value = str[3];
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@discontinued", SqlDbType.Bit);
            if (str[4].Equals(""))
                param.Value = DBNull.Value;
            else if (str[4].Equals("True"))
                param.Value = true;
            else if (str[4].Equals("False"))
                param.Value = false;
            cmd.Parameters.Add(param);
            //
            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }
        #endregion
    }
}
