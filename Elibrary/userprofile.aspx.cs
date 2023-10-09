﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"].ToString() ==  null)
                {
                    Response.Write("<script>alert('Session Expired, Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    getUserBookData();

                    if(!Page.IsPostBack)
                    {
                        getUserData();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Session Expired, Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        //Update button Click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"].ToString() == null)
            {
                Response.Write("<script>alert('Session Expired, Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserDetails();
            }
        }


        //User Defined Function

        void updateUserDetails()
        {
            string password = "";
            if(TextBox10.Text.Trim() == "")
            {
                password = TextBox9.Text.Trim();
            }
            else
            {
                password = TextBox10.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update member_master_tbl set full_name = @full_name, dob = @dob, contact_no = @contact_no, email = @email, county = @county, " +
                    "city = @city, code = @code, full_address = @full_address, password = @password, account_status = @account_status WHERE member_id = " +
                    "'" + Session["username"].ToString().Trim() +"'", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@county", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@code", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if(result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully.');</script>");
                    getUserData();
                    getUserBookData();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials.');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message +"');</script>");
            }
        }

        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id = '" + Session["username"].ToString() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                TextBox2.Text = dt.Rows[0]["dob"].ToString();
                TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox4.Text = dt.Rows[0]["email"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["county"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox7.Text = dt.Rows[0]["code"].ToString();
                TextBox5.Text = dt.Rows[0]["full_address"].ToString();
                TextBox8.Text = dt.Rows[0]["member_id"].ToString();
                TextBox9.Text = dt.Rows[0]["password"].ToString();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if(dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if(dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if(dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-danger");
                }
                else
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-info");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        void getUserBookData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from book_issue_tbl where member_id = '" + Session["username"].ToString() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your Condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}