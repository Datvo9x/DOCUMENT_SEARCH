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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-CCVS3UK;Initial Catalog=TraCuuHoSo;Integrated Security=True");
        private void Load_Data()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from UserLogin", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Load_Data();
            }
        }      
        protected void ButtonThem_Click(object sender, EventArgs e)
        {
            if (TextBox_Them1.Text == "" || TextBox_Them2.Text == "" || TextBox_Them3.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin!!!')</script>");
            }

            else
            {
                SqlDataAdapter nhanvien = new SqlDataAdapter("SELECT * FROM NhanVien WHERE MaNhanVien = '" + TextBox_Them1.Text + "' ", con);
                DataTable bnhanvien = new DataTable();
                nhanvien.Fill(bnhanvien);
                if (bnhanvien.Rows.Count > 0)
                {
                    SqlDataAdapter nvlg = new SqlDataAdapter("SELECT * FROM UserLogin WHERE MaNhanVien = '" + TextBox_Them1.Text + "' ", con);
                    DataTable bnvlg = new DataTable();
                    nvlg.Fill(bnvlg);
                    if (bnvlg.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Đã tồn tại tài khoản !!!')</script>");
                    }
                    else
                    {
                        try
                        {
                            SqlCommand cmd = new SqlCommand("Insert into UserLogin values('" +
                            TextBox_Them1.Text + "','" + TextBox_Them2.Text + "','" + TextBox_Them3.Text + "')", con);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Load_Data();
                            TextBox_Them1.Text = "";
                            TextBox_Them2.Text = "";
                            TextBox_Them3.Text = "";
                        }
                        catch
                        {
                            Response.Write("<script>alert('Loại user chưa đúng  !!!')</script>");
                        }
                    }    
                }
                else
                {
                    Response.Write("<script>alert('Không thể thêm tài khoản do nhân viên không tồn tại!!!')</script>");
                }                
            }
        }
        protected void ButtonSua_Click(object sender, EventArgs e)
        {
            if (Manhanvien.Text == "" || Mknv.Text == "" || Loainv.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin!!!')</script>");
            }

            else
            {
                try
                {

                    SqlCommand cmd = new SqlCommand("update UserLogin set UserPass='" + Mknv.Text + "',MaUserType='" + Loainv.Text + "' where MaNhanVien='" + Manhanvien.Text + "' ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Load_Data();
                    Manhanvien.Text = "";
                    Mknv.Text = "";
                    Loainv.Text = "";

                }
                catch

                {
                    Response.Write("<script>alert('Không thể sửa !!!')</script>");
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox_Them1.Text = HttpUtility.HtmlDecode((string)row.Cells[0].Text);
            TextBox_Them2.Text = HttpUtility.HtmlDecode((string)row.Cells[1].Text);
            TextBox_Them3.Text = HttpUtility.HtmlDecode((string)row.Cells[2].Text);          
            TextBox_Xoa.Text = HttpUtility.HtmlDecode((string)row.Cells[0].Text);

        }

        protected void Button_Xoa_Click(object sender, EventArgs e)
        {
            if (TextBox_Xoa.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin!!!')</script>");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM UserLogin WHERE MaNhanVien = '" + TextBox_Xoa.Text + "' ", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    try
                    {

                        SqlCommand cmd = new SqlCommand("Delete from UserLogin where MaNhanVien='" +
                         TextBox_Xoa.Text + "' ", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Load_Data();
                        TextBox_Xoa.Text = "";

                    }
                    catch

                    {
                        Response.Write("<script>alert('Không thể xoá mỗi nhân viên phải có 1 tài khoản !!!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Không tìm thấy  !!!')</script>");
                    TextBox_Xoa.Text = "";
                }
            }
        }

        protected void Button_Tim_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from UserLogin where MaNhanVien like N'%" + TextBox_Tim.Text + "%'  ", con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            if (TextBox_Tim.Text != "")
            {
                if (tb.Rows.Count > 0)
                {
                    GridView1.DataSource = tb;
                    GridView1.DataBind();
                }
                else
                {

                    Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('Search_None()',500);</script>");
                }
            }
            else
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('Search_Trong()',500);</script>");
        }

        protected void Button_Re_Click(object sender, EventArgs e)
        {          
                Response.Redirect("Admin.aspx");         
        }
        protected void remove_TaiKhoan(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            Manhanvien.Text = HttpUtility.HtmlDecode((string)gvr.Cells[0].Text);
            string x = Manhanvien.Text;
            SqlCommand cmd = new SqlCommand("delete from ChiNhanh where MaChiNhanh = '" + x + "'", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Load_Data();
            }
            catch
            {
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('remove()',1000);</script>");
            }
        }
        protected void XoaID_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            Manhanvien.Text = HttpUtility.HtmlDecode((string)gvr.Cells[0].Text);
            Lbxoa.Text = HttpUtility.HtmlDecode((string)gvr.Cells[0].Text);
            ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#exampleModal1').modal('toggle');</script>");
        }

        protected void Bntdelete_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("delete from UserLogin where MaNhanVien = '" + Manhanvien.Text + "'", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Load_Data();
                
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('Xoa_done()',500);</script>");
            }
            catch
            {
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('remove()',1000);</script>");
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            String MaNV = gvr.Cells[1].Text.Trim();
            if (MaNV == null)
            {
                Response.Write("<script>alert('=null')</script>");
            }
            else
            {
                Manhanvien.Text = HttpUtility.HtmlDecode((string)gvr.Cells[0].Text);
                Mknv.Text = HttpUtility.HtmlDecode((string)gvr.Cells[1].Text);
                Loainv.Text = HttpUtility.HtmlDecode((string)gvr.Cells[2].Text);
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#exampleModal').modal('toggle');</script>");
            }
        }
    }   
}