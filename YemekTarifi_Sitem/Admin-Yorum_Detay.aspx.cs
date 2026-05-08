using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetay : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, Yorumicerik, YemekAd From Yorumlar_Tablosu inner join Yemekler_Tablosu on Yorumlar_Tablosu.Yemekid=Yemekler_Tablosu.Yemekid where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAdSoyad.Text = oku[0].ToString();
                TxtMail.Text = oku[1].ToString();
                Txticerik.Text = oku[2].ToString();
                TxtYemek.Text = oku[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Yorumlar_Tablosu set Yorumicerik=@p1, YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txticerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}