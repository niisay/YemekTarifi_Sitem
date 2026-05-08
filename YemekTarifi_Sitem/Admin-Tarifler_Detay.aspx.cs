using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Tarifler_Detay : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tarifler_Tablosu where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAd.Text = oku[1].ToString();
                TxtMalzeme.Text = oku[2].ToString();
                Txtyapilis.Text = oku[3].ToString();
                TxtOneren.Text = oku[5].ToString();
                TxtMail.Text = oku[6].ToString();
            }

            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Kategoriler_Tablosu", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = oku2;
            DropDownList1.DataBind();
        }
    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Tarifler_Tablosu set TarifDurum = 1 where tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();

        SqlCommand komut2 = new SqlCommand("insert into Yemekler_Tablosu (YemekAd, YemekMalzeme, YemekTarif, Kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut2.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komut2.Parameters.AddWithValue("@p3", Txtyapilis.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();

        SqlCommand komut3 = new SqlCommand("Update Kategoriler_Tablosu set KategoriAdet = KategoriAdet+1 where Kategoriid=@k1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}