using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;


namespace AC_Charts
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {

        public string db = "";

        public MainPage()
        {

            InitializeComponent();

        }


        void dbTestButtonClicked(object sender, EventArgs args)
        {

            SqlServices mysql = new SqlServices("server=0.0.0.0;uid=remote;port=1234;pwd=SUPERSAFEPASSWORD;database=DBNAME;");
            mysql.testDatabaseConnection();

        }

        async void demo1ButtonClicked(object sender, EventArgs args)
        {

            //Register Syncfusion license
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("BUY_A_License");
            await Navigation.PushAsync(new Demo1("AC"));

        }

        async void demo2ButtonClicked(object sender, EventArgs args)
        {

            //Register Syncfusion license
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("BUY_A_License");
            await Navigation.PushAsync(new Demo1("AC_2"));

        }


    }
}


