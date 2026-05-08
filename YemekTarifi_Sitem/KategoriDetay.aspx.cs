using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriDetay : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    string Kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Kategoriid = Request.QueryString["Kategoriid"];
        SqlCommand komut = new SqlCommand("Select * From Yemekler_Tablosu where Kategoriid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Kategoriid);
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
        bgl.baglanti().Close();
    }
}