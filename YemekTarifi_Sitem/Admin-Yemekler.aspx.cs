using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Yemekler : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();

    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {   
        if (Page.IsPostBack == false)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];
            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Kategoriler_Tablosu", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = oku2;
            DropDownList1.DataBind();

            //Sİlme İşlemi
            if (islem == "sil")
            {
                SqlCommand komuteski = new SqlCommand("Select Kategoriid From Yemekler_Tablosu where Yemekid=@p1", bgl.baglanti());
                komuteski.Parameters.AddWithValue("@p1", id);
                int eskiKategori = Convert.ToInt32(komuteski.ExecuteScalar());


                SqlCommand kmtsil = new SqlCommand("Delete From Yemekler_Tablosu where Yemekid=@p1", bgl.baglanti());
                kmtsil.Parameters.AddWithValue("@p1", id);
                kmtsil.ExecuteNonQuery();


                SqlCommand komut4 = new SqlCommand("update Kategoriler_Tablosu set KategoriAdet=KategoriAdet-1 where Kategoriid=@p1", bgl.baglanti());
                komut4.Parameters.AddWithValue("@p1", eskiKategori);
                komut4.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        //YemekListesi
        SqlCommand komut = new SqlCommand("Select * From Yemekler_Tablosu", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        bgl.baglanti().Close();                        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
        //yemek ekleme
        SqlCommand komut3 = new SqlCommand("insert into Yemekler_Tablosu (YemekAd, YemekMalzeme, YemekTarif, Kategoriid, YemekResim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();


        //kategori sayısını arttırma
        SqlCommand komut4 = new SqlCommand("update Kategoriler_Tablosu set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
        komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut4.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}