using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VoTanDat_TraCuuHoSo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-CCVS3UK;Initial Catalog=TraCuuHoSo;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM UserLogin WHERE MaNhanVien = '" + TextBox1.Text + "' AND UserPass = '" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
           
            if (dt.Rows.Count > 0)
            {
                Session["name"] = TextBox1.Text;
                Session["allow"] = true;
                switch (dt.Rows[0]["MaUserType"].ToString().Trim())
                {
                    case "T1": Response.Redirect("Admin.aspx");  break;
                    case "T2": Response.Redirect("Manage.aspx"); break;
                    case "T3": Response.Redirect("User.aspx"); break;                
                }
                
            }
            else
            {
                Response.Write("<script>alert('Sai tài khoản hoặc mật khẩu!!')</script>");
            }
        }
    }
}