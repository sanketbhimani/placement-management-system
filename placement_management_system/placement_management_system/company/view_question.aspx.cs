﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace placement_management_system.company
{
    public partial class view_question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["company_id"] == null)
            {
                Response.Redirect("company_login.aspx", true);
            }
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["pmsdbConnectionString"].ConnectionString;

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from company_table where company_id = '" + Session["company_id"].ToString() + "'";
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            name.Text = reader["company_name"].ToString();
            con.Close();
        }
    }
}