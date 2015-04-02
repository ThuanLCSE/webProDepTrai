using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace ProjectWeb
{
    
    abstract class DTOabs:objectInterface
    {
        public SqlCommand cmd = new SqlCommand();
        private SqlConnection con;
        public DTOabs()
        {

            cmd.Connection = (new DAO.getCon()).ConDB();
            
        }
        public void closeConnection()
        {
            cmd.Connection.Close();
        }
        #region objectInterface Members

        public bool insert(List<string> str)
        {
            throw new NotImplementedException();
        }

        public bool update(int id, List<string> str)
        {
            throw new NotImplementedException();
        }

        public bool delete(int id)
        {
            throw new NotImplementedException();
        }

        public System.Data.SqlClient.SqlDataReader select()
        {
            throw new NotImplementedException();
        }




        public SqlDataReader search(int id,List<String> str)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
