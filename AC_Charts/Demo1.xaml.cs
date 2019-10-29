using System;
using System.Collections.Generic;
using Syncfusion.SfChart.XForms;
using Xamarin.Forms;
using MySql.Data.MySqlClient;
using System.Data;
using System.Collections.ObjectModel;
using System.Text;

namespace AC_Charts
{
    public partial class Demo1 : ContentPage
    {

        public static string tableName;

        public Demo1(string table)
        {
            tableName = table;
            InitializeComponent();                                  
        }

        // Shows FilterStackview
        void FilterButtonClicked(object sender, EventArgs args)
        {
            filter_comboBox.SelectedIndices = null;
            FilterStack.IsVisible = true;
            Content = FilterStack;
        }


        // Call Funktion to create dynamic chart
        void ApplyFilterClicked(object sender, EventArgs args)
        {
            //Try to show demo without crash. 
            //There is currently no further error processing for :(
            try
            {
                createDynamicChart();
            }
            catch(Exception e)
            {
                DisplayAlert("No error occurred", "Current date: 01.04.2020\n\n It has to be an april fool.", "Try again");
            }

        }


        // Reads selected items from filter and creates charts for each "Teilnehmer" and "Kompetenz"
        private void createDynamicChart()
        {
            FilterStack.IsVisible = false;
            
            // Get all filter options
            AC_Charts.ViewModel.ViewModel_Filter filterValues = new AC_Charts.ViewModel.ViewModel_Filter();

            // Get selected filtes from SFComboBox
            List<int> selectedFilteridx = (System.Collections.Generic.List<int>)filter_comboBox.SelectedIndices;

            // Convert items to String and append to list. (Needed for String operations)
            List<string> filter = new List<string>();

            foreach (var entry in filterValues.FilterCollection)
            {
                filter.Add(entry.FilterValue.ToString());
            }

            // Match selected filter index with filter values
            List<string> tn = new List<string>();

            foreach (var entry in selectedFilteridx)
            {
                if (filter[entry].Split('/')[0] == "Teilnehmer") { tn.Add(filter[entry].Split('/')[1]); }
            }

            
            SfChart chart = new SfChart();
            // Place series next to each other
            chart.SideBySideSeriesPlacement = true;

            //Initializing primary axis
            CategoryAxis primaryAxis = new CategoryAxis();
            chart.PrimaryAxis = primaryAxis;
            primaryAxis.LabelRotationAngle = 90;

            //Initializing secondary Axis
            NumericalAxis secondaryAxis = new NumericalAxis();
            secondaryAxis.Title.Text = "Absolute Sterne";
            chart.SecondaryAxis = secondaryAxis;

            //Initializing column series
            chart.Legend = new ChartLegend();

            // Loop through selected "Teilnehmer"
            foreach (var person in tn)
            {

                // Create specifiy data for current "Teilnehmer" and "Kompetenz"
                ViewModel_Auswertung dynamicChart = new ViewModel_Auswertung(filter, selectedFilteridx, person, tableName);

                // Create series with data
                chart.Series.Add(addSeries(dynamicChart.Data, "Bewertung", "Label", person, GetRandomColour(),  0.7));

            }

            // Display chart
            Content = chart;
        }


        // Returns specific column series 
        private ColumnSeries addSeries(List<Auswertung> values, string y, string x, string teilnehmer, Color color, double width)
        {
            
            ColumnSeries newSeries = new ColumnSeries();
            // Parse specific data
            newSeries.ItemsSource = values;
            newSeries.XBindingPath = x;
            newSeries.YBindingPath = y;
      
            newSeries.Color = color;
            newSeries.Label = teilnehmer;
            newSeries.Width = width;
            newSeries.Opacity = 0.5;
            // Stroke to seperate series
            newSeries.StrokeColor = Color.White;
            newSeries.StrokeWidth = 5;
            // Animation
            newSeries.EnableAnimation = true;
            newSeries.AnimationDuration = 1;
            // Playe DataMarker inside the chart
            newSeries.DataMarker = new ChartDataMarker();
            newSeries.DataMarkerPosition = (Syncfusion.SfChart.XForms.DataMarkerPosition)DataMarkerLabelPosition.Inner;
            newSeries.DataMarker.LabelStyle.FontSize = 9;

            return newSeries;

        }


        // Random color to distinguish charts
        private static readonly Random rand = new Random();


        private Color GetRandomColour()
        {
            return Color.FromRgb(rand.Next(256), rand.Next(256), rand.Next(256));
        }
    }
}
