using System;
using System.Collections.Generic;
using Syncfusion.SfChart.XForms;
using Xamarin.Forms;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;

namespace AC_Charts
{
    public class SqlServices
    {

        private string mysqlArgs;

        public SqlServices(string mysqlArgs)
        {

            this.mysqlArgs = mysqlArgs;
            
        }


        public MySqlConnection dbConnection()
        {
            string ConnectionString = this.mysqlArgs;
            MySqlConnection sqlConn = new MySqlConnection(ConnectionString);

            try
            {
                sqlConn.Open();
                sqlConn.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            
            return sqlConn;

        }


        public List<string> queryDB(string command, string mode)
        {

            List<string> output = new List<string>();

            MySqlConnection sqlConn = dbConnection();
            sqlConn.Open();


            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = sqlConn;
            cmd.CommandText = command;

            MySqlDataReader sqlReader;
            sqlReader = cmd.ExecuteReader();

            while (sqlReader.Read())
            {

                switch (mode)
                {
                    case "single":
                        output.Add(sqlReader.GetString(0));
                        Console.WriteLine(sqlReader.GetString(0));
                        break;

                    case "multiple":
                        output.Add(ReadSingleRow((IDataRecord)sqlReader));
                        break;
                }

            }

            sqlReader.Close();
            sqlConn.Close();

            return output;



        }


        private static string ReadSingleRow(IDataRecord record)
        {
            Console.WriteLine(String.Format("{0},{1},{2},{3},{4},{5},{6}", record[1], record[2], record[3], record[4], record[5], record[6], record[7]));
            return String.Format("{0},{1},{2},{3},{4},{5},{6}", record[1], record[2], record[3], record[4], record[5], record[6], record[7]);

        }


        public void testDatabaseConnection()
        {
            string ConnectionString = this.mysqlArgs;
            MySqlConnection sqlConn = new MySqlConnection(ConnectionString);

            try
            {
                sqlConn.Open();
                sqlConn.Close();

                
                App.Current.MainPage.DisplayAlert("Info", "Connection to SQL DB successful.", "OK");
                

            }
            catch (Exception ex)
            {
                App.Current.MainPage.DisplayAlert("Info", ex.Message, "OK");
            }
        }


    }
}
