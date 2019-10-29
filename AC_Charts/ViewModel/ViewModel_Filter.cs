using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;

namespace AC_Charts.ViewModel
{

    public class ViewModel_Filter : INotifyPropertyChanged
    {
        private ObservableCollection<Filter> filterCollection;
        public ObservableCollection<Filter> FilterCollection
        {
            get { return filterCollection; }
            set { filterCollection = value; }
        }


        public ViewModel_Filter()
        {
            filterCollection = new ObservableCollection<Filter>();

            List<string> dbColumns = new List<string>();

            dbColumns.Add("Teilnehmer");
            dbColumns.Add("Event");
            dbColumns.Add("Kompetenz_ges");
            dbColumns.Add("Kompetenz");
            dbColumns.Add("Beobachter");

            SqlServices mysql = new SqlServices("server=0.0.0.0;uid=remote;port=1234;pwd=SUPERSAFEPASSWORD;database=DBNAME;");
            
            foreach (var column in dbColumns)
            {

                foreach (var entry in mysql.queryDB("Select DISTINCT `"+column+"` from "+ Demo1.tableName + ";","single"))
                {

                    if (entry != ""){

                        filterCollection.Add(new Filter() { FilterValue = column + "/" + entry });

                    }   

                }

            }

        }

        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(String value)
        {
            if (PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(value));
        }
    }

}