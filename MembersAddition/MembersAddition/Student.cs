using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AchieversCPS
{
    public class Student
    {
        public int StudentId { get; set; }
        public string UserName { get; set; }
        public string StudentName { get; set; }
        public string ProgramName { get; set; }
        public string StudentEmail { get; set; }
        public int FacultyAdvisorId { get; set; }
        public string degreeType { get; set; }
        public string semester { get; set; }
        public int StartYear { get; set; }


    }
}