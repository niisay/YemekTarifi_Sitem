using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// baglanti için özet açıklama
/// </summary>
public class SqlBaglanti
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection("Data Source=YAVUZ\\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifiSitesi;Integrated Security=True;TrustServerCertificate=True");
        baglan.Open();
        return baglan;
    }
}