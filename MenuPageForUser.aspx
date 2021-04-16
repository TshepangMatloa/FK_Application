<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPageForUser.aspx.cs" Inherits="FK_Application.MenuPageForUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">File Keeper</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">                       
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Conctact</a></li>
                        <li align:"right"><asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /></li>
                       
                        </ul>
                   
                </div>
            </div>
        </div>
     <div class="row">
         <div class="col-md-4"></div>
        <div class="col-md-4">
            
         
        
            
            
             <table class ="table table-responsive " >

               <tr>
                   <td>
                       <asp:Button ID="btnSearch" runat="server" Text="Search File" width="156px"  OnClick="btnSearch_Click" style="display: inline-block;
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
        to(blue),
        color-stop(0.03, #72c6e4)
    );
    -moz-border-radius: 0.333em;
    -webkit-border-radius: 0.333em;
    width:210px;
    height:45px"/>
                   </td>
                   <td>
                       <asp:Button ID="btnAddFileName" runat="server" Text="Add File" Width="156px"  OnClick="btnAddFileName_Click" style="display: inline-block;
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
        to(blue),
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
