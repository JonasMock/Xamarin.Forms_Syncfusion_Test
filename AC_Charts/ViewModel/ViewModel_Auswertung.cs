using System;
using System.Collections.Generic;
using System.Text;
using AC_Charts;

public class ViewModel_Auswertung
{
    public List<Auswertung> Data { get; set; }

    public ViewModel_Auswertung(List<string> filter, List<int> selectedFilter, string teilnehmer, string table)
    {

        Data = new List<Auswertung>();
        // Fill data dynamiclly
        dynamicData(filter, selectedFilter, teilnehmer, table);

    }

    // Builds specific SQL query and appends data to List<Auswertung>
    private void dynamicData(List<string> filter, List<int> selectedFilter, string teilnehmer, string table)
    {
                       
        StringBuilder command = new StringBuilder();

        string precommand = "Select * From";

        command.Append(" `" + table + "` Where `Teilnehmer` = \"" + teilnehmer + "\" ");

        // Used for case count. Needed for decision which operator should be used "AND" / "OR"
        int[] countCmd = new int[4];
        // Event
        countCmd[0] = 0;
        // Kompetenz
        countCmd[1] = 0;
        // Kompetenz_ges
        countCmd[2] = 0;
        // Beobachter
        countCmd[3] = 0;

        
        // Parses selected filters and append specific operator and conditions to command
        foreach (var entry in selectedFilter)
        {
            // ViewModel/ViewModel_Filter.cs defines filter: "Column/Entry"
            string value = filter[entry].Split('/')[1];

            string category = filter[entry].Split('/')[0];

            switch (category)
            {

                case "Event":
                  
                        if (countCmd[0] == 0)
                        {
                            command.Append("AND `"+category+"` = \"" + value + "\" ");
                        }
                        else
                        {
                            command.Append("OR `Teilnehmer` = \"" + teilnehmer + "\" AND `" + category + "` = \"" + value + "\" ");
                        }            

                        countCmd[0]++;

                    break;


                case "Kompetenz":

                        if (countCmd[1] == 0)
                        {
                            command.Append("AND `" + category + "` = \"" + value + "\" ");
                        }
                        else
                        {
                            command.Append("OR `Teilnehmer` = \"" + teilnehmer + "\" AND `" + category + "` = \"" + value + "\" ");
                        }

                        countCmd[1]++;

                    break;


                case "Kompetenz_ges":
                  
                        if (countCmd[2] == 0)
                        {
                            command.Append("AND `" + category + "` = \"" + value + "\" ");
                        }
                        else
                        {
                            command.Append("OR `Teilnehmer` = \"" + teilnehmer + "\" AND `" + category + "` = \"" + value + "\" ");
                        }

                        countCmd[2]++;

                    break;


                case "Beobachter":
                  
                        if (countCmd[3] == 0)
                        {
                            command.Append("AND `" + category + "` = \"" + value + "\" ");
                        }
                        else
                        {
                            command.Append("OR `Teilnehmer` = \"" + teilnehmer + "\" AND `" + category + "` = \"" + value + "\" ");
                        }

                        countCmd[3]++;

                    break;

            }

        }

        command.Append(";");


        // Initiate instance for SQL operations
        SqlServices mysql = new SqlServices("server=0.0.0.0;uid=remote;port=1234;pwd=SUPERSAFEPASSWORD;database=DBNAME;");

        //Check console for SQL cmd
        Console.WriteLine(precommand + command);

        // SQL query return list with rows. Append each row to List<Auswertung>                           
        foreach (var entry in mysql.queryDB(precommand + command.ToString(), "multiple"))
        {

            Data.Add(new Auswertung { Teilnehmer = entry.Split(',')[0], Kompetenz_ges = entry.Split(',')[2], Kompetenz = entry.Split(',')[3], Event = entry.Split(',')[1], Bewertung = Convert.ToInt32(entry.Split(',')[4]), Beobachter = entry.Split(',')[5], Label = entry.Split(',')[6] });

        }
               
    }

}
