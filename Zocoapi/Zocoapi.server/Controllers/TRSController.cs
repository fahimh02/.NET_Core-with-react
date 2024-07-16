using Microsoft.AspNetCore.Mvc;
using Product.Server.Models;

namespace Zocoapi.server.Controllers
{
    public class TRSController : Controller
    {
        private readonly ProductContext _context;

        public TRSController(ProductContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
