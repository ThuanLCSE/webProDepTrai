using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Project
{
    class order:DTOabs
    {
       
        public order():base()
        {
          
        }
        #region objectInterface Members

        public bool insert(List<string> str)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertOrder";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@custid", SqlDbType.Int);
            param.Value = Int32.Parse(str[0]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@empid", SqlDbType.Int);
            param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@orderdate", SqlDbType.DateTime);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@requireddate", SqlDbType.DateTime);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shippeddate", SqlDbType.DateTime);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipperid", SqlDbType.Int);
            param.Value = Int32.Parse(str[5]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@freight", SqlDbType.Money);
            param.Value = decimal.Parse(str[6]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipname", SqlDbType.VarChar, 40);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipaddress", SqlDbType.VarChar, 60);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcity", SqlDbType.VarChar, 15);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipregion", SqlDbType.VarChar, 15);
            param.Value = str[10];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shippostalcode", SqlDbType.VarChar, 10);
            param.Value = str[11];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcountry", SqlDbType.VarChar, 15);
            param.Value = str[12];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
                }
            catch (Exception e)
            {
                MessageBox.Show("This order can not be inserted");
            }
            return true;
        }

        public bool update(int id, List<string> str)
        {
            try{
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UpdateOrder";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@custid", SqlDbType.Int);
            param.Value = Int32.Parse(str[0]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@empid", SqlDbType.Int);
            param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@orderdate", SqlDbType.DateTime);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@requireddate", SqlDbType.DateTime);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shippeddate", SqlDbType.DateTime);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipperid", SqlDbType.Int);
            param.Value = Int32.Parse(str[5]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@freight", SqlDbType.Money);
            param.Value = decimal.Parse(str[6]);
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipname", SqlDbType.VarChar, 40);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipaddress", SqlDbType.VarChar, 60);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcity", SqlDbType.VarChar, 15);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipregion", SqlDbType.VarChar, 15);
            param.Value = str[10];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shippostalcode", SqlDbType.VarChar, 10);
            param.Value = str[11];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcountry", SqlDbType.VarChar, 15);
            param.Value = str[12];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
                }
            catch (Exception e)
            {
                MessageBox.Show("This order can not be updated");
            }
            return true;
        }

        public bool delete(int id)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DeleteOrder";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public SqlDataReader select()
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "selectOrder";
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SearchOrder";
            SqlParameter param;// = new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@custid", SqlDbType.Int);
            if (str[0].Equals(""))
                param.Value = DBNull.Value;
            else 
                param.Value = Int32.Parse(str[0]);
            cmd.Parameters.Add(param);
            //
            //
            param = new SqlParameter("@empid", SqlDbType.Int);
            if (str[1].Equals(""))
                param.Value = DBNull.Value;
            else
                param.Value = Int32.Parse(str[1]);
            cmd.Parameters.Add(param);
            //
            //
            //param = new SqlParameter("@orderdate", SqlDbType.DateTime);
            //if (str[2].Equals(DateTime.Now.ToShortDateString()))
            //    param.Value = DBNull.Value;
            //else    
            //    param.Value = str[2];
            //cmd.Parameters.Add(param);
            ////
            ////
            //param = new SqlParameter("@requireddate", SqlDbType.DateTime);
            //if (str[3].Equals(DateTime.Now.ToShortDateString()))
            //    param.Value = DBNull.Value;
            //else 
            //    param.Value = str[3];
            //cmd.Parameters.Add(param);
            ////
            ////
            //param = new SqlParameter("@shippeddate", SqlDbType.DateTime);
            //if (str[4].Equals(DateTime.Now.ToShortDateString()))
            //    param.Value = DBNull.Value;
            //else
            //    param.Value = str[4];
            //cmd.Parameters.Add(param);
            //
            //
            param = new SqlParameter("@shipperid", SqlDbType.Int);
            if (str[2].Equals(""))
                param.Value = DBNull.Value;
            else
                param.Value = Int32.Parse(str[2]);
            cmd.Parameters.Add(param);
            //
            //
            param = new SqlParameter("@freight", SqlDbType.Money);
            if (str[3].Equals(""))
                param.Value = DBNull.Value;
            else
                param.Value = decimal.Parse(str[3]);
            cmd.Parameters.Add(param);
            //
            param = new SqlParameter("@shipname", SqlDbType.VarChar, 40);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipaddress", SqlDbType.VarChar, 60);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcity", SqlDbType.VarChar, 15);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipregion", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shippostalcode", SqlDbType.VarChar, 10);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@shipcountry", SqlDbType.VarChar, 15);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }
        #endregion
    }
}
