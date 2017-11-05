using MembersAddition;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AchieversCPS
{
    public partial class AddMember : System.Web.UI.Page
    {
        AchieversBL bizl = new AchieversBL();
        Dictionary<int, string> faculties = new Dictionary<int, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                pnlAddFac.Visible = false;
                pnlAddStudent.Visible = false;
            }
        }

        protected void txtStudentLastName_TextChanged(object sender, EventArgs e)
        {
            Random rand=new Random(1);
            txtStudentEmail.Text = txtStudentLastName.Text + txtStudentFirstName.Text.ElementAt(0).ToString() + rand.Next().ToString().Substring(0,4);
        }

        protected void ddlMemberSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlMemberSelection.Text=="Student")
            {
                pnlAddFac.Visible = false;
                pnlAddStudent.Visible = true;
                AchieversDAL dal = new AchieversDAL();
                ddlDept.DataSource = dal.GetAllDept();
                ddlDept.DataBind();
                faculties = bizl.GetAllFaculties();
                ddlAdvisor.DataSource = faculties;
                ddlAdvisor.DataValueField = "key";
                ddlAdvisor.DataTextField = "value";
                ddlAdvisor.DataBind();
            }
            else if (ddlMemberSelection.Text == "Faculty Advisor")
            {
                pnlAddFac.Visible = true;
                pnlAddStudent.Visible = false;
            }
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            Student std = new Student();
            bool isAdded = false;
            std.StudentId =int.Parse(txtStudentId.Text);
            std.StudentName = txtStudentFirstName.Text + " " + txtStudentLastName.Text;
            std.StudentEmail = txtStudentEmail.Text + "@uhcl.edu";
            std.UserName = txtStudentEmail.Text;
            std.degreeType = "Masters";
            std.StartYear = int.Parse( ddlYear.Text);
            std.semester = ddlSemester.Text;
            string[] dept=ddlDept.Text.Split('-');
            std.FacultyAdvisorId = int.Parse( ddlAdvisor.SelectedValue);
            std.ProgramName = dept[dept.Length - 1];
            Users user = new Users();
            user.FullName = std.StudentName;
            user.Password = txtStudentPass.Text;
            user.Role = "Student";
            user.Userid = std.StudentId;
            user.UserName = std.UserName;
            isAdded = bizl.AddStudent(std,user);
            if(isAdded)
            {
                Response.Write("Added Successfully");
            }
            else
            {
                Response.Write("Adddition unsuccessful");
            }

        }

        protected void btnAddFaculty_Click(object sender, EventArgs e)
        {
            Faculty fac = new Faculty();
            bool isAdded = false;
            fac.FacultyId = int.Parse(txtFacId.Text);
            fac.FacultyFName = txtFirstName.Text;
            fac.FacultyLName = txtLastName.Text;
            fac.FeMail = txtFacultyEmail.Text + "@uhcl.edu";
            fac.facultyUserName=txtFacultyEmail.Text;
            Users user = new Users();
            user.FullName = fac.FacultyFName+" "+fac.FacultyLName;
            user.Password = txtFacPass.Text;

            user.Role = "Faculty";
            user.Userid = fac.FacultyId;
            user.UserName = fac.facultyUserName;
            isAdded = bizl.AddFaculty(fac, user);
            if (isAdded)
            {
                Response.Write("Added Successfully");
            }
            else
            {
                Response.Write("Adddition unsuccessful");
            }
        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {
            Random rand = new Random(1);
            txtFacultyEmail.Text = txtLastName.Text + txtFirstName.Text.ElementAt(0).ToString() + rand.Next().ToString().Substring(0, 4);
        }
    }
}