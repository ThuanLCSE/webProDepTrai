using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;


namespace Project.DAO
{
    public class getCon
    {
        public System.Data.SqlClient.SqlConnection con;
        public SqlConnection ConDB()
        {
            con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = //ConfigurationManager.ConnectionStrings["Constr"].ConnectionString;
            //con.ConnectionString =
                //@"server=.\sqlexpress;database=TSQLFundamentals2008;integrated security=true";
                @"server=localhost;database=TSQLFundamentals2008;;uid=sa;pwd=123456";
            con.Open();

            return con;
        }
    }
}
