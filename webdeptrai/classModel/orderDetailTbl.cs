using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Project.classModel
{
    class orderDetailTbl:objectInterface
    {
        orderDetail obj;
        public orderDetailTbl ()
        {
            obj = new orderDetail();
        }

        #region objectInterface Members

        public bool insert(List<string> str)
        {
            try{
            return obj.insert(str);
                 }
            catch (Exception e)
            {
                MessageBox.Show("This order detail can not be inserted");
                return false;
            }
        }

        public bool update(int id, List<string> str)
        {
            return obj.update(id, str);
        }

        public bool delete(int id)
        {
            try
            {
                return obj.delete(id);
            }
            catch (Exception e)
            {
                MessageBox.Show("This order detail can not be delete");
                return false; 
            }
        }

        public System.Data.SqlClient.SqlDataReader search(int id, List<string> str)
        {
            return obj.search(id, str);
        }

        public System.Data.SqlClient.SqlDataReader select()
        {
            return obj.select();
        }

        #endregion
}
