<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="AchieversCPS.AddMember" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="SELECT ROLE:"></asp:Label>
        <asp:DropDownList ID="ddlMemberSelection" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlMemberSelection_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty Advisor</asp:ListItem>
        </asp:DropDownList>

        <div>
            <asp:Panel ID="pnlAddStudent" runat="server">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentId" runat="server" Text="Student Id:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentName1" runat="server" Text="Student First Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblStudentName2" runat="server" Text="Student Last Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentLastName" runat="server" AutoPostBack="true" OnTextChanged="txtStudentLastName_TextChanged"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblUhclEmail" runat="server" Text="Student Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentEmail" runat="server"></asp:TextBox>
                            @uhcl.edu</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblProgramName" runat="server" Text="Program Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDept" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFacultyAdvisorName" runat="server" Text="Faculty Advisor:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAdvisor" AutoPostBack="true" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Semester:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSemester"  runat="server">
                                <asp:ListItem>Spring</asp:ListItem>
                                <asp:ListItem>Summer</asp:ListItem>
                                <asp:ListItem>Fall</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
<tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Year:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlYear" AutoPostBack="true" runat="server">
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblStudentPass" runat="server" Text="Student Password:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentPass" TextMode="Password" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnAddStudent" runat="server" Text="Add Student" OnClick="btnAddStudent_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="pnlAddFac" runat="server">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblFacId" runat="server" Text="Id:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFacId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="FirstName:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="LastName:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged" AutoPostBack="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFacEmail" runat="server" Text="Email Id:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFacultyEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFacPass" TextMode="Password" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnAddFaculty" runat="server" Text="Add Faculty" OnClick="btnAddFaculty_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
