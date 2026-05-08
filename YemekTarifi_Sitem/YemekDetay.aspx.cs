using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];

        SqlCommand komut1 = new SqlCommand("Select YemekAd From Yemekler_Tablosu where yemekid=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader oku1 = komut1.ExecuteReader();
        while (oku1.Read())
        {
            Label3.Text = oku1[0].ToString();
        }
        bgl.baglanti().Close();

        //Yorumları Listeleme

        SqlCommand komut2 = new SqlCommand("Select * From Yorumlar_Tablosu where yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader oku2 = komut2.ExecuteReader();
        DataList2.DataSource = oku2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        // 1. Yorumu ekle
        SqlCommand komut = new SqlCommand(
            "INSERT INTO Yorumlar_Tablosu(yorumadsoyad, yorummail, yorumicerik, yemekid) " +
            "VALUES (@p1, @p2, @p3, @p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();


        // 2. Mevcut puanı al
        SqlCommand komutOku = new SqlCommand(
            "SELECT YemekPuan FROM Yemekler_Tablosu WHERE Yemekid=@id", bgl.baglanti());
        komutOku.Parameters.AddWithValue("@id", yemekid);
        SqlDataReader oku = komutOku.ExecuteReader();

        float mevcutPuan = 0;
        if (oku.Read())
            mevcutPuan = Convert.ToSingle(oku[0]);
        oku.Close();

        // 3. Yorum sayısını al
        SqlCommand komutSay = new SqlCommand(
            "SELECT COUNT(*) FROM Yorumlar_Tablosu WHERE Yemekid=@id", bgl.baglanti());
        komutSay.Parameters.AddWithValue("@id", yemekid);
        int yorumSayisi = Convert.ToInt32(komutSay.ExecuteScalar());

        // 4. Ortalama hesapla
        float yeniPuan = Convert.ToSingle(TxtPuan.Text);
        float yeniOrtalama = ((mevcutPuan * (yorumSayisi - 1)) + yeniPuan) / yorumSayisi;

        // 5. Güncelle
        SqlCommand komutGuncelle = new SqlCommand(
            "UPDATE Yemekler_Tablosu SET YemekPuan=@puan WHERE Yemekid=@id", bgl.baglanti());
        komutGuncelle.Parameters.AddWithValue("@puan", yeniOrtalama);
        komutGuncelle.Parameters.AddWithValue("@id", yemekid);
        komutGuncelle.ExecuteNonQuery();

        bgl.baglanti().Close();
    }
}