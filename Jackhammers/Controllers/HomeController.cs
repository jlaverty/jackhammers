using System;
using System.Web.Http;

namespace Jackhammers.Controllers
{
    public class HomeController : ApiController
    {
        public IHttpActionResult Index()
        {
            return Ok();
        }

        public IHttpActionResult ThrowException()
        {
            throw new InvalidOperationException();
        }

    }
}
