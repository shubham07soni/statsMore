using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

public partial class statsMore_CurrencyConverter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] availableCurrency = CurrencyConverter.GetCurrencyTags();
        // Print currency tags comma seperated
        //Console.WriteLine("Available Currencies");
        txtAvailablecurr.Text =(string.Join(",", availableCurrency));
        //Console.WriteLine("\n");
        string fromeur = "eur";
        string toinr = "inr";
        int amount = 1;
        float exchangeRateeur = CurrencyConverter.GetExchangeRate(fromeur, toinr, amount);
        lbleur.Text = "Current EUR:" + ' ' + Convert.ToString(exchangeRateeur);

        string fromusd = "usd";
        // string toinr = "inr";
        //int amount = 1;
        float exchangeRateusd = CurrencyConverter.GetExchangeRate(fromusd, toinr, amount);
        lblusd.Text = "Current USD:" + ' ' + Convert.ToString(exchangeRateusd);

        string fromaud = "aud";
        // string toinr = "inr";
        // int amount = 1;
        float exchangeRateaud = CurrencyConverter.GetExchangeRate(fromaud, toinr, amount);
        lblaud.Text = "Current AUD:" + ' ' + Convert.ToString(exchangeRateaud);

        string fromgbp = "gbp";
        // string toinr = "inr";
        //int amount = 1;
        float exchangeRategbp = CurrencyConverter.GetExchangeRate(fromgbp, toinr, amount);
        lblgbp.Text = "Current GBP:" + ' ' + Convert.ToString(exchangeRategbp);
    }


    protected void btncurrency_Click(object sender, EventArgs e)
    {
        string fromCurrency = txtConvertFrom.Text;
        string toCurrency = txtConvertTo.Text;  
        int amount = Convert.ToInt32(txtAmount.Text);

        //
        // STEP 1 : Print all avaiable currencies on screen
        //

        // Get all available currency tags
       // CurrencyConverter  = new CurrencyConverterApp();
        // string[] availableCurrency = CurrencyConverter.GetCurrencyTags();
        //// Print currency tags comma seperated
        //Console.WriteLine("Available Currencies");
        //Console.WriteLine(string.Join(",", availableCurrency));
        //Console.WriteLine("\n");

        //
        // STEP 2 : Allow the User to input the currency rates
        //

        //Console.WriteLine("Insert Currency you want to convert FROM");
        //fromCurrency = Console.ReadLine();
        //Console.WriteLine("\n");

        //Console.WriteLine("Insert Currency you want to convert TO");
        //toCurrency = Console.ReadLine();
        //Console.WriteLine("\n");

        //
        // STEP 3 : Calculate and display the currency exchange rate
        //
       // CurrencyConverterApp curr=new CurrencyConverterApp   
        // Calls a method to get the exchange rate between 2 currencies
        float exchangeRate = CurrencyConverter.GetExchangeRate(fromCurrency, toCurrency, amount);
        // Print result of currency exchange
       // Console.WriteLine("FROM " + amount + " " + fromCurrency.ToUpper() + " TO " + toCurrency.ToUpper() + " = " + exchangeRate);
        txtAnswer.Text = Convert.ToString(exchangeRate);
        
        // Wait for key press to close console window
        //Console.ReadLine();

    }

    protected void lnkback_Click(object sender, EventArgs e)
    {
        Response.Redirect("calculator1.aspx");

    }
}