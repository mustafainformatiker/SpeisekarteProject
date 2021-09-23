using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SpeisekarteProject
{
    public class Controller
    {
        private IMongoDatabase db;

        public Controller(string databaseName)
        {
            var client = new MongoClient();
            db = client.GetDatabase(databaseName);
        }

        public void AddGericht<T>(string table, T gerichtRecord)
        {
            try
            {
                var collection = db.GetCollection<T>(table);
                collection.InsertOne(gerichtRecord);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}