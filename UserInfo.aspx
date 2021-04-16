<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="FK_Application.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        
        <div class="col-md-12">
        <h2>NEW DEVICES</h2>
            <p style="color:red; text-align:right">
                <asp:Label ID="lblHide" runat="server" Text=""></asp:Label></p>
            
            
             <table class="table table-responsive" >
                 
                 
               <tr>
                   <td>
File Name: 
                   </td>
                   <td>
                       <asp:Label ID="lblFileName" runat="server" Text=""></asp:Label>
                   </td>
               </tr> 
                 
                  <tr>
                   <td>
File Room: 
                   </td>
                   <td>
                       <asp:Label ID="lblFileRoom" runat="server" Text=""></asp:Label>
                   </td>
               </tr> 
               
                       
                 
                 <tr>
                      
                   
                    <td class="modal-lg" style="width: 641px">
                         <br />
                         <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="display: inline-block;
    border: 1px solid;
    border-color:ButtonShadow;
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
    width:185px;
    height:45px" />
                     </td>

                     <td>
                         <br />
                         

     <asp:Button ID="btnAlocate" runat="server" Text="Delete" OnClick="btnAllocate_Click" style="display: inline-block;
    border: 1px solid;
    border-color:ButtonShadow;
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
        to(gray),
        color-stop(0.03, #72c6e4)
    );
    -moz-border-radius: 0.333em;
    -webkit-border-radius: 0.333em;
    width:185px;
    height:45px" />
                     </td>

                 </tr>

                 </table>
            </div>
        </div>
</asp:Content>



