using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;


    public class Categori : DTOabs
    {
        
        public Categori():base()
        {
            
        }
        #region objectInterface Members

        public bool insert(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertCategories";
            cmd.Parameters.Clear();
            SqlParameter param = new SqlParameter("@categoryname", SqlDbType.VarChar, 15);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@description", SqlDbType.VarChar, 200);
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
            cmd.CommandText = "UpdateCategories";
            cmd.Parameters.Clear();
        
            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@categoryname", SqlDbType.VarChar, 15);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@description", SqlDbType.VarChar, 200);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool delete(int id)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DeleteCategories";
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
           cmd.CommandText = "selectCategories";
            SqlDataReader dr = cmd.ExecuteReader();
            //closeConnection();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "searchCategories";
            SqlParameter param;
            //= new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            param = new SqlParameter("@categoryname", SqlDbType.VarChar, 15);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@description", SqlDbType.VarChar, 200);
            param.Value = str[1];
            cmd.Parameters.Add(param);

            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }
        #endregion
    }
