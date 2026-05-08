using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Yemek_Düzenle : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Yemekid"] == null)
        {
            Response.Redirect("Admin-Yemekler.aspx");
            return;
        }
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Yemekler_Tablosu where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();
                TextBox3.Text = oku[3].ToString();
                DropDownList1.Text = oku[7].ToString();
            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Kategoriler_Tablosu", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

        //Eski Kategori Değeri
        SqlCommand komuteski = new SqlCommand("Select Kategoriid From Yemekler_Tablosu where Yemekid=@p1", bgl.baglanti());
        komuteski.Parameters.AddWithValue("@p1", id);
        int eskiKategori = Convert.ToInt32(komuteski.ExecuteScalar());
        bgl.baglanti().Close();

        //Yemeği GÜncelle
        SqlCommand komut = new SqlCommand("Update Yemekler_Tablosu set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, kategoriid=@p4, YemekResim=@p6 where yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        int yeniKategori = Convert.ToInt32(DropDownList1.SelectedValue);

        //Kategori Değiştiyse Adeti GÜncelle
        if(eskiKategori != yeniKategori)
        {
            SqlCommand komutazalt = new SqlCommand("update Kategoriler_Tablosu set KategoriAdet=KategoriAdet-1 where Kategoriid=@p1", bgl.baglanti());
            komutazalt.Parameters.AddWithValue("@p1", eskiKategori);
            komutazalt.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komutarttır = new SqlCommand("update Kategoriler_Tablosu set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            komutarttır.Parameters.AddWithValue("@p1", yeniKategori);
            komutarttır.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Tüm yemeklerin durumunu false yaptık
        SqlCommand komut = new SqlCommand("Update Yemekler_Tablosu set Durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();

        //Günün yemeği için id ye göre durumu true yapalım
        SqlCommand komut2 = new SqlCommand("update Yemekler_Tablosu set Durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}