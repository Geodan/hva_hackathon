using Newtonsoft.Json;
using System;

namespace tourniquette
{
    public class Observation
    {
        public DateTime phenomenonTime { get; set; }
        public int result { get; set; }
        public Datastream Datastream { get; set; }
    }

    public class Datastream
    {
        [JsonProperty("@iot.id")]
        public int Id {get;set;}
    }
}
