<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FK_Application.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        
         <div class="col-md-4">
         
        </div>
        
        <div class="col-md-4"  style="background-image:url('TshepangVS/FK login BGpic.png'); width:500px">
           <h2 style="color:darkred">Login</h2>
            
             <table class =" table table-responsive">
               <tr>
                   <td>
<b style="color:darkred; height:100px; width:100px">User Name:</b> 
                   </td>
                   <td>
                       <asp:TextBox ID="txtUser" CSSClass ="form-control"  runat="server"></asp:TextBox>
                   </td>
               </tr> 

                <tr>
                   <td>
<b style="color:darkred; height:100px; width:100px">Password:</b>
                   </td>
                   <td>
                       <asp:TextBox ID="txtPass" CSSClass ="form-control"  runat="server" TextMode="Password" ></asp:TextBox>
                   </td>
               </tr> 
<tr>
                   <td>
                       <asp:Button ID="Button3" runat="server"  Text="Submit" OnClick="Button3_Click" style="display: inline-block;
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
    height:45px"/>
                       </td>
    <td>

                       <asp:Button ID="Button4" runat="server"  Text="Cancel" style="display: inline-block;
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
    height:45px" /> <br /><br />

                       
                   </td>
    
    
    </table>  
        </div>
        <div class="col-md-4">
            
        </div>
    </div>

</asp:Content>
