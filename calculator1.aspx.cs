using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calculator1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int fno = Convert.ToInt32(txtfirstNo.Text);
        int sno = Convert.ToInt32(txtsecondNo.Text);
        txtAnswer.Text = Convert.ToString(fno + sno);
    }

    protected void btnsubtract_Click(object sender, EventArgs e)
    {
        int fno = Convert.ToInt32(txtfirstNo.Text);
        int sno = Convert.ToInt32(txtsecondNo.Text);
        txtAnswer.Text = Convert.ToString(fno - sno);
    }

    protected void btnmulti_Click(object sender, EventArgs e)
    {
        int fno = Convert.ToInt32(txtfirstNo.Text);
        int sno = Convert.ToInt32(txtsecondNo.Text);
        txtAnswer.Text = Convert.ToString(fno * sno);
    }

    protected void btndiv_Click(object sender, EventArgs e)
    {
        int fno = Convert.ToInt32(txtfirstNo.Text);
        int sno = Convert.ToInt32(txtsecondNo.Text);
        txtAnswer.Text = Convert.ToString(fno / sno);
    }

    protected void btncurrency_Click(object sender, EventArgs e)
    {
        Response.Redirect("CurrencyConverter.aspx");
    }
}
