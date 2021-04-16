<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFilePage.aspx.cs" Inherits="FK_Application.AddFilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <div class="row">

         <div class="col-md-4">
             <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
         </div>
        <div class="col-md-4">
       
            
             <table class ="table table-responsive " >
                  <tr>
                   <td>
File Name:
                   </td>
                   <td>
                       <asp:TextBox ID="txtFileName" CSSClass ="form-control"  runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="r1" runat="server" ErrorMessage="File name is required"
                           controltovalidation="txtFileName"></asp:RequiredFieldValidator>
                   </td>
               </tr> 

                <tr>
                   <td>
File Number:
                   </td>
                   <td>
                       <asp:TextBox ID="txtFileNumber" CSSClass ="form-control"  runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator1" runat="server" ErrorMessage="File number is required"
                           controltovalidation="txtFileNumber"></asp:RequiredFieldValidator>

                       
                   </td>
               </tr> 
               <tr>
                   <td>
File Room: 
                   </td>
                   <td>
                       <asp:TextBox ID="txtFileRoom" CSSClass ="form-control"  runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator style="color:red" id="RequiredFieldValidator2" runat="server" ErrorMessage="File room is required"
                           controltovalidation="txtFileRoom"></asp:RequiredFieldValidator>
                   </td>
               </tr> 

                

                <tr>
                   <td>
                       <asp:Button ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" style="display: inline-block;
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
                       <asp:Button ID="Button2" runat="server"  Text="Back" OnClick="Button2_Click" style="display: inline-block;
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
    height:45px"/>

                   </td>
                   
               </tr> 
            </table>
            </div>
        <div class="col-md-4"></div>
        </div>

</asp:Content>
