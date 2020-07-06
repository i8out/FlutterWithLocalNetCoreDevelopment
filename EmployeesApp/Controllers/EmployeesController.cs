using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EmployeesApp.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EmployeesApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeesController : ControllerBase
    {
        [AllowAnonymous]
        [HttpGet("getemployees")]
        public IActionResult GetEmployees()
        {
            var employees = EmployeesData.GetEmployees();
            return Ok(employees);
        }
    }
}
