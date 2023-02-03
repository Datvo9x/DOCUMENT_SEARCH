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
    public partial class User : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-CCVS3UK;Initial Catalog=TraCuuHoSo;Integrated Security=True");
        private void Load_Data()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from View_HoSo", con);
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
         protected void GridView3_RemoveIndex(object sender, EventArgs e)
        {
                LinkButton btn = (LinkButton)sender;
                GridViewRow gvr = (GridViewRow)btn.NamingContainer;
                String MaHoSo = gvr.Cells[0].Text.Trim();
            if(MaHoSo == null)
            {
                Response.Write("<script>alert('=null')</script>");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("select * From ViTri where MaHoSo='" + MaHoSo +"'", con);
                DataTable tb = new DataTable();
                da.Fill(tb);
                GridView2.DataSource = tb;
                GridView2.DataBind();
                ClientScript.RegisterStartupScript(GetType(), "Show", "<script> $('#exampleModal').modal('toggle');</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }
       

        protected void Btn_tim_Click(object sender, EventArgs e)
        {
            if (Tb_tim.Text == "")
            {
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('Search_Trong()',500);</script>");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from View_HoSo where MaHoSo like N'%" + Tb_tim.Text + "%' OR TenLoaiHoSo like N'%" + Tb_tim.Text + "%' OR NgayBanHanh like N'%" + Tb_tim.Text + "%' OR TenTinhTrang like N'%" + Tb_tim.Text + "%' OR TenHoSo like N'%" + Tb_tim.Text + "%'" +
                " OR NoiNhap like N'%" + Tb_tim.Text + "%' OR NoiNhan like N'%" + Tb_tim.Text + "%' OR NguoiQuanLy like N'%" + Tb_tim.Text + "%' OR ThoiGianBaoQuan like N'%" + Tb_tim.Text + "%' OR MucDoBaoMat like N'%" + Tb_tim.Text + "%' ", con);
                DataTable tb = new DataTable();
                da.Fill(tb);
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
        }

        protected void Bnt_timcao_Click(object sender, EventArgs e)
        {
            if (TB_tenhs.Text == "")
            {
                Page.RegisterStartupScript("refresh", "<script language=javascript>window.setTimeout('Search_Trong()',500);</script>");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from View_HoSo where MaHoSo like N'%" + Tb_tim.Text + "%' OR TenLoaiHoSo like N'%" + Tb_tim.Text + "%' OR NgayBanHanh like N'%" + Tb_tim.Text + "%' OR TenTinhTrang like N'%" + Tb_tim.Text + "%' OR TenHoSo like N'%" + Tb_tim.Text + "%'" +
                " OR NoiNhap like N'%" + Tb_tim.Text + "%' OR NoiNhan like N'%" + Tb_tim.Text + "%' OR NguoiQuanLy like N'%" + Tb_tim.Text + "%' OR ThoiGianBaoQuan like N'%" + Tb_tim.Text + "%' OR MucDoBaoMat like N'%" + Tb_tim.Text + "%' ", con);
                DataTable tb = new DataTable();
                da.Fill(tb);
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
        }
    }
}