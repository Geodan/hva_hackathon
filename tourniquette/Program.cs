using System;
using System.Collections.Generic;
using System.IO;
using System.Timers;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;

namespace tourniquette
{
    class Program
    {
        static DateTime startDateTime = new DateTime(2017, 12, 24, 14, 08, 00);
        static int elapsedSeconds = 0;
        static List<TourniquetteEvent> events;
        static void Main(string[] args)
        {
            var file = @"events.csv";
            events = GetEvents(file);

            Console.WriteLine("Hello World!" + events.Count);

            var myTimer = new Timer();
            myTimer.Elapsed += new ElapsedEventHandler(DisplayTimeEvent);
            myTimer.Interval = 1000; // 1000 ms is one second
            myTimer.Start();
            Console.ReadLine();
        }

        private static void DisplayTimeEvent(object sender, ElapsedEventArgs e)
        {
            elapsedSeconds++;
            var datetime = startDateTime.AddSeconds(elapsedSeconds);

            var items = from ev in events
                        where ev.DateTime == datetime
                        select ev;
            if (items.ToList().Count > 0)
            {
                foreach (var item in items)
                {
                    Console.WriteLine($"{item.DateTime}: {item.Ingang}");
                    WriteToGost(item);
                }
            }
        }

        public static T PostJson<T>(string url, T entity)
        {
            var client = new HttpClient();
            var serialized = JsonConvert.SerializeObject(entity, Formatting.Indented, new JsonSerializerSettings
            {
                DateTimeZoneHandling = DateTimeZoneHandling.Utc
            });
            var buffer = System.Text.Encoding.UTF8.GetBytes(serialized);
            var byteContent = new ByteArrayContent(buffer);
            byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var responseMessage = client.PostAsync(url, byteContent).Result;
            var response = responseMessage.Content.ReadAsStringAsync().Result;
            var item = JsonConvert.DeserializeObject<T>(response);
            return item;
        }

        private static void WriteToGost(TourniquetteEvent ev)
        {
            var server = "https://gostarena.westeurope.cloudapp.azure.com/v1.0";
            var obs = new Observation();
            var datastream = new Datastream();
            datastream.Id = 32;
            switch (ev.Ingang)
            {
                case 'A':
                    datastream.Id = 32;
                    break;
                case 'B':
                    datastream.Id = 33;
                    break;
                case 'C':
                    datastream.Id = 34;
                    break;
                case 'D':
                    datastream.Id = 35;
                    break;
                case 'E':
                    datastream.Id = 36;
                    break;
                case 'F':
                    datastream.Id = 37;
                    break;
                case 'G':
                    datastream.Id = 38;
                    break;
                case 'H':
                    datastream.Id = 39;
                    break;
                case 'I':
                    datastream.Id = 40;
                    break;
                case 'J':
                    datastream.Id = 41;
                    break;
                case 'K':
                    datastream.Id = 42;
                    break;
                case 'L':
                    datastream.Id = 43;
                    break;
                case 'M':
                    datastream.Id = 44;
                    break;
            }

            obs.Datastream = datastream;
            obs.result = 1;
            obs.phenomenonTime = ev.DateTime;
            PostJson<Observation>(server + "/observations", obs);
            // var returnedObservation = client.CreateObservation(obs);
        }

        private static List<TourniquetteEvent> GetEvents(string file)
        {

            var first = true;
            var tourniquetteEvents = new List<TourniquetteEvent>();
            using (var reader = new StreamReader(file))
            {
                while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    if (!first)
                    {
                        var tourniquetteEvent = LineParser.Parse(line);
                        tourniquetteEvents.Add(tourniquetteEvent);
                    }
                    else
                    {
                        first = false;
                    }
                }
            }
            return tourniquetteEvents;
        }
    }
}
