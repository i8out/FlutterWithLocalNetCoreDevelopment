﻿using EmployeesApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeesApp.Data
{
    public class EmployeesData
    {
        public static List<Employee> GetEmployees()
        {
            List<Employee> employees = new List<Employee>();
            employees.Add(new Employee
            {
                EmployeeId = 1,
                LastName = "Davolio",
                FirstName = "Nancy",
                Title = "Sales Representative",
                TitleOfCourtesy = "Ms.",
                BirthDate = DateTime.Parse("1948-12-08T00:00:00"),
                HireDate = DateTime.Parse("1992-05-01T00:00:00"),
                Address = "507 - 20th Ave. E. Apt. 2A",
                City = "Seattle",
                Region = "WA",
                PostalCode = "98122",
                Country = "USA",
                HomePhone = "(206) 555-9857",
                Extension = "5467",
                Notes = "Education includes a BA in psychology from Colorado State University in 1970.  She also completed \"The Art of the Cold Call.\"  Nancy is a member of Toastmasters International.",
                ReportsTo = 2,
                Photo = "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"
            });
            employees.Add(new Employee
            {
                EmployeeId = 2,
                LastName = "Fuller",
                FirstName = "Andrew",
                Title = "Vice President, Sales",
                TitleOfCourtesy = "Dr.",
                BirthDate = DateTime.Parse("1952-02-19T00:00:00"),
                HireDate = DateTime.Parse("1992-08-14T00:00:00"),
                Address = "908 W. Capital Way",
                City = "Tacoma",
                Region = "WA",
                PostalCode = "98401",
                Country = "USA",
                HomePhone = "(206) 555-9482",
                Extension = "3457",
                Notes = "Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.",
                ReportsTo = null,
                Photo = "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"
            });
            employees.Add(new Employee
            {
                EmployeeId = 3,
                LastName = "Leverling",
                FirstName = "Janet",
                Title = "Sales Representative",
                TitleOfCourtesy = "Ms.",
                BirthDate = DateTime.Parse("1963-08-30T00:00:00"),
                HireDate = DateTime.Parse("1992-04-01T00:00:00"),
                Address = "722 Moss Bay Blvd.",
                City = "Kirkland",
                Region = "WA",
                PostalCode = "98033",
                Country = "USA",
                HomePhone = "(206) 555-3412",
                Extension = "3355",
                Notes = "Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.",
                ReportsTo = 2,
                Photo = "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"
            });
            employees.Add(new Employee
            {
                EmployeeId = 4,
                LastName = "Peacock",
                FirstName = "Margaret",
                Title = "Sales Representative",
                TitleOfCourtesy = "Mrs.",
                BirthDate = DateTime.Parse("1937-09-19T00:00:00"),
                HireDate = DateTime.Parse("1993-05-03T00:00:00"),
                Address = "4110 Old Redmond Rd.",
                City = "Redmond",
                Region = "WA",
                PostalCode = "98052",
                Country = "USA",
                HomePhone = "(206) 555-8122",
                Extension = "5176",
                Notes = "Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.",
                ReportsTo = 2,
                Photo = "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"
            });
            employees.Add(new Employee
            {
                EmployeeId = 5,
                LastName = "Buchanan",
                FirstName = "Steven",
                Title = "Sales Manager",
                TitleOfCourtesy = "Mr.",
                BirthDate = DateTime.Parse("1955-03-04T00:00:00"),
                HireDate = DateTime.Parse("1993-10-17T00:00:00"),
                Address = "14 Garrett Hill",
                City = "London",
                Region = null,
                PostalCode = "SW1 8JR",
                Country = "UK",
                HomePhone = "(71) 555-4848",
                Extension = "3453",
                Notes = "Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses \"Successful Telemarketing\" and \"International Sales Management.\"  He is fluent in French.",
                ReportsTo = 2,
                Photo = "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"
            });
            return employees;
        }
    }
}