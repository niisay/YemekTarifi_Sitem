using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Kategoriler : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }

        SqlCommand komut = new SqlCommand("Select * From Kategoriler_Tablosu", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        //Silme işlemi

        if(islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete From Kategoriler_Tablosu where Kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel4.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Panel2.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
        SqlCommand komut = new SqlCommand("insert into Kategoriler_Tablosu (KategoriAd, KategoriResim) values (@p1,@p2)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", "~/resimler/" + FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}