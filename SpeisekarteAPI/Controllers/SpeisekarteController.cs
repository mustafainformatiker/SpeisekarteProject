using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;
using SpeisekarteAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SpeisekarteAPI.Controllers
{
    

    [Route("api/[controller]")]
    [ApiController]
    public class SpeisekarteController : ControllerBase
    {
        private IMongoDatabase db;

        public JsonResult alleGerichte()
        {
            var client = new MongoClient();
            db = client.GetDatabase("speisekartedb");

            var lstAlleGerichte = db.GetCollection<Gericht>("gerichte").AsQueryable();

            return new JsonResult(lstAlleGerichte);
        }
    }
}
