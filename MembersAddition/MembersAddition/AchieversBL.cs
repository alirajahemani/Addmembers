using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace AchieversCPS
{
    public class AchieversBL
    {
       
        List<Users> userList = new List<Users>();
        AchieversDAL dal = new AchieversDAL();

        internal Dictionary<int, string> GetAllFaculties()
        {
            Dictionary<int, string> faculties = dal.GetAllFaculties();

            return faculties;
        }


       
        internal bool AddStudent(Student std,Users user)
        {
            bool isAdded = dal.AddStudent(std,user);
            return isAdded;
        }


        internal bool AddFaculty(MembersAddition.Faculty fac, Users user)
        {
            bool isAdded = dal.AddFaculty(fac, user);
            return isAdded;
        }
    }
}