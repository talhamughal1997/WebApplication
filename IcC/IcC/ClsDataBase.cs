using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;

namespace IcC
{
    public class ClsDataBase
    {

        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["IcC_DataBase"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        string qry;

        
        
        public bool Manipulate(string query)
        {
            //try
            //{
                cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = cn;
                cn.Open();
                int num;
                num = cmd.ExecuteNonQuery();
                cn.Close();
                if (num > 0)
                {
                    return true;

                }
                else
                {
                    return false;
                }
            //}
            //catch(Exception)
            //{
            //    cn.Close();
            //    return false;                
            //}


        }

        public bool FindRecord(string query)
        {
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            int num = ds.Tables["tab"].Rows.Count;

            if (num > 0)
            {
                return true;
            }
            else
            {
                return false;
            }


        }

        public string FindField(string query, string FieldName)
        {
            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            int num = ds.Tables["tab"].Rows.Count;

            if (num > 0)
            {
                return ds.Tables["tab"].Rows[0][FieldName].ToString();
            }
            else
            {
                return "Not Found";
            }

        }

        public string FindField(string query, string FieldName, string where)
        {
            query += " where id = " + where;

            da = new SqlDataAdapter(query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            int num = ds.Tables["tab"].Rows.Count;

            if (num > 0)
            {
                return ds.Tables["tab"].Rows[0][FieldName].ToString();
            }
            else
            {
                return "Not Found";
            }

        }

        public void BindToDataList(string Query, DataList DataList)
        {
            da = new SqlDataAdapter(Query, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            DataList.DataSource = ds.Tables["tab"];
            DataList.DataBind();
        }
    }
}