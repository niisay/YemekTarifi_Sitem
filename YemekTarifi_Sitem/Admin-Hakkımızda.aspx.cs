using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Hakkımızda : System.Web.UI.Page
{
    SqlBaglanti bgl = new SqlBaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from Hakkimizda_Tablosu", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();
        }
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
        SqlCommand komut = new SqlCommand("update Hakkimizda_Tablosu set Metin=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}