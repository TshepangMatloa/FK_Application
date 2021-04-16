<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="FK_Application.SignupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
         <div class="col-md-4"></div>
        <div class="col-md-4">
        <h2>SIGNUP HERE</h2>
            
             <table class ="table table-responsive " >
                  <tr>
                   <td>
First Name:
                   </td>
                   <td>
                       <asp:TextBox ID="txtfirstname" CSSClass ="form-control"  runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator1" runat="server" ErrorMessage="First name is required"
                           controltovalidation="txtFileNumber"></asp:RequiredFieldValidator>
                   </td>
               </tr> 

                <tr>
                   <td>
Last Name:
                   </td>
                   <td>
                       <asp:TextBox ID="txtlastname" CSSClass ="form-control"  runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is required"
                           controltovalidation="txtFileNumber"></asp:RequiredFieldValidator>

                       
                   </td>
               </tr> 
               <tr>
                   <td>
User Name: 
                   </td>
                   <td>
                       <asp:TextBox ID="txtusername" CSSClass ="form-control"  runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator3" runat="server" ErrorMessage="User name is required"
                           controltovalidation="txtFileNumber"></asp:RequiredFieldValidator>
                   </td>
               </tr> 

                <tr>
                   <td>
Password:
                   </td>
                   <td>
                       <asp:TextBox ID="txtpassword" CSSClass ="form-control"  runat="server"  TextMode="Password" ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required"
                           controltovalidation="txtFileNumber"></asp:RequiredFieldValidator>
                   </td>
               </tr> 
                 <tr>
                   <td>
Email:
                   </td>
                   <td>
                       <asp:TextBox ID="txtEmail" CSSClass ="form-control"  runat="server"  ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required"
                           controltovalidation="txtEmail"></asp:RequiredFieldValidator>

                       <asp:RegularExpressionValidator style="color:red" id="EmailValidate" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]w+)*\.\w+([-.]\w+)*"
                           controltovalidation="txtEmail" ErrorMassage="Invalid Email format"></asp:RegularExpressionValidator>
                   </td>
               </tr> 

                                <tr>
                   <td>
User type:
                   </td>
                   <td>
                       <asp:DropDownList ID="DDUserType" runat="server" CSSClass ="form-control" style="width:180px">
                           <asp:ListItem Value="1">Admin</asp:ListItem>
                           <asp:ListItem Value="2">End user</asp:ListItem>
                       </asp:DropDownList>


                       
                   </td>
               </tr> 

               

                <tr>
                   <td>

                       <asp:Button ID="Button1" runat="server" CssClass ="bg-primary" Text="Submit" OnClick="Button1_Click" style="display: inline-block;
    border: 1px solid;
    border-color: #50a3c8 #297cb4 #083f6f;
    background: #0c5fa5 url(../images/old-browsers-bg/button-element-bg.png) repeat-x left top;
    
    background-size: 100% 100%;
    background: -moz-linear-gradient(
        top,
        white,
        #72c6e4 4%,
        #0c5fa5
    );
    background: -webkit-gradient(
        linear,
        left top, left bottom,
        from(white),
        to(green),
        color-stop(0.03, #72c6e4)
    );
    -moz-border-radius: 0.333em;
    -webkit-border-radius: 0.333em;
    width:210px;
    height:45px" />
                       </td>
                    <td>
                       <asp:Button ID="Button2" runat="server" CssClass ="bg-danger" Text="Back" OnClick="Button2_Click" style="display: inline-block;
    border: 1px solid;
    border-color: #50a3c8 #297cb4 #083f6f;
    background: #0c5fa5 url(../images/old-browsers-bg/button-element-bg.png) repeat-x left top;
    
    background-size: 100% 100%;
    background: -moz-linear-gradient(
        top,
        white,
        #72c6e4 4%,
        #0c5fa5
    );
    background: -webkit-gradient(
        linear,
        left top, left bottom,
        from(white),
        to(red),
        color-stop(0.03, #72c6e4)
    );
    -moz-border-radius: 0.333em;
    -webkit-border-radius: 0.333em;
    width:210px;
    height:45px" />

                   </td>
                   <td>

                   </td>
               </tr> 
            </table>
            </div>
        <div class="col-md-4"></div>
        </div>

</asp:Content>
