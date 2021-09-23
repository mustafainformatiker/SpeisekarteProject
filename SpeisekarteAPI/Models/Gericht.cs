using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SpeisekarteAPI.Models
{
    public class Gericht
    {
        [BsonId]
        public Guid id { get; set; }
        public string name { get; set; }

        public string kurzschreibung { get; set; }

        public string preis { get; set; }

        public string hauptkategorie { get; set; }

        public string zeitgesteuert { get; set; }

        public string status { get; set; }

        public string wartezeit { get; set; }
    }
}
