using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Project
{
    class employee:DTOabs
    {
        
        public employee():base()
        {
            
        }
        #region objectInterface Members
        
        public bool insert(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertEmployee";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@lastname", SqlDbType.VarChar, 20);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@firstname", SqlDbType.VarChar, 10);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@title", SqlDbType.VarChar, 30);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@titleofcourtesy", SqlDbType.VarChar, 25);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@birthdate", SqlDbType.DateTime);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@hiredate", SqlDbType.DateTime);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@postalcode", SqlDbType.VarChar, 10);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            param.Value = str[10];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[11];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@mgrid", SqlDbType.Int);
            if (str[12].CompareTo("")==0)
            param.Value= DBNull.Value;
            else param.Value=Int32.Parse(str[12]);
            cmd.Parameters.Add(param);

            cmd.ExecuteNonQuery();

            closeConnection();
            return true;
        }

        public bool update(int id, List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UpdateEmployee";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            param = new SqlParameter("@lastname", SqlDbType.VarChar, 20);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@firstname", SqlDbType.VarChar, 10);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@title", SqlDbType.VarChar, 30);
            param.Value = str[2];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@titleofcourtesy", SqlDbType.VarChar, 25);
            param.Value = str[3];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@birthdate", SqlDbType.DateTime);
            param.Value = str[4];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@hiredate", SqlDbType.DateTime);
            param.Value = str[5];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            param.Value = str[6];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            param.Value = str[7];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            param.Value = str[8];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@postalcode", SqlDbType.VarChar, 10);
            param.Value = str[9];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            param.Value = str[10];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            param.Value = str[11];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@mgrid", SqlDbType.Int);
            if (str[12].CompareTo("") == 0)
                param.Value = DBNull.Value;
            else param.Value = Int32.Parse(str[12]);
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();
            closeConnection();
            return true;
        }

        public bool delete(int id)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DeleteEmployee";
            cmd.Parameters.Clear();

            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            cmd.Parameters.Add(param);
            //
            cmd.ExecuteNonQuery();

            return true;
        }

        public SqlDataReader select()
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "selectEmployee";
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public SqlDataReader search(List<string> str)
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "searchEmployee";
            SqlParameter param;// = new SqlParameter("@id", SqlDbType.Int);
            //param.Value = id;
            //cmd.Parameters.Add(param);
            param = new SqlParameter("@lastname", SqlDbType.VarChar, 20);
            param.Value = str[0];
            cmd.Parameters.Add(param);
            param = new SqlParameter("@firstname", SqlDbType.VarChar, 10);
            param.Value = str[1];
            cmd.Parameters.Add(param);
            //param = new SqlParameter("@title", SqlDbType.VarChar, 30);
            //param.Value = str[2];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@titleofcourtesy", SqlDbType.VarChar, 25);
            //param.Value = str[3];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@birthdate", SqlDbType.DateTime);
            //param.Value = str[4];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@hiredate", SqlDbType.DateTime);
            //param.Value = str[5];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@address", SqlDbType.VarChar, 60);
            //param.Value = str[6];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@city", SqlDbType.VarChar, 15);
            //param.Value = str[7];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@region", SqlDbType.VarChar, 15);
            //param.Value = str[8];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@postalcode", SqlDbType.VarChar, 10);
            //param.Value = str[9];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@country", SqlDbType.VarChar, 15);
            //param.Value = str[10];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@phone", SqlDbType.VarChar, 24);
            //param.Value = str[11];
            //cmd.Parameters.Add(param);
            //param = new SqlParameter("@mgrid", SqlDbType.Int);
            //if (str[12].CompareTo("") == 0)
            //    param.Value = DBNull.Value;
            //else param.Value = Int32.Parse(str[12]);
            //cmd.Parameters.Add(param);
            //
            SqlDataReader dr = cmd.ExecuteReader();

            return dr;
        }
        #endregion
    }
}
