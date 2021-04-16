<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="FK_Application.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
         
        <div class="col-md-12">
     
        
            <table class="table table-responsive">
            
            <tr>
           <td class="modal-lg" style="width: 641px">
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" class="table"   Font-Size="Small" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                   <asp:TemplateField HeaderText="userID" Visible="False">
                                    <ItemTemplate>
                                        <asp:Label ID="FileID" runat="server" Text='<%# Eval("File_ID")%>' />
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Delete Link" SortExpression="number">
                        <ItemTemplate>
                            <%--taking vendor number to the other side--%>
                             <%--<a href='<%# String.Format("Approve_Disapprove.aspx?inombolo={0}", Eval("fpbo_partnerid")) %>'><b><%# Eval("number") %> </b></a> --%> 
                            
                             <a href='<%# String.Format("UserInfo.aspx?FileID={0}&Availability={1}", Eval("File_ID"),
                             Eval("Availability")) %>'><b><%# Eval("File_Number") %> </b></a>  
                                                                    
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="File ID" SortExpression="File ID">
                        <ItemTemplate>
                            <asp:Label ID="lblType" runat="server" Text='<%# Bind("File_ID") %>'></asp:Label>
                        </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="File Name" SortExpression="File Name">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("File_Name") %>'></asp:Label>
                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="File Number" SortExpression="File_Number">
                        <ItemTemplate>
                            <asp:Label ID="lblReason" runat="server" Text='<%# Bind("File_Number") %>'></asp:Label>
                        </ItemTemplate>
                                    </asp:TemplateField>


                     <asp:TemplateField HeaderText="Date" SortExpression="Date">
                        <ItemTemplate>
  
                              <asp:Label ID="lblVendor" runat="server" Text='<%# Bind("Date") %>'></asp:Label>                                              
                        </ItemTemplate>
                        </asp:TemplateField>

                     <asp:TemplateField HeaderText="File Room" SortExpression="File_Room">
                        <ItemTemplate>
                            <asp:Label ID="lblTimeCreated" runat="server" Width="200px" Text='<%# Bind("File_Room") %>'></asp:Label>
                        </ItemTemplate>
                                        </asp:TemplateField>

                     <asp:TemplateField HeaderText="User ID" SortExpression="User_ID">
                        <ItemTemplate>
                            <asp:Label ID="lblTimeCreated" runat="server" Width="200px" Text='<%# Bind("User_ID") %>'></asp:Label>
                        </ItemTemplate>
                                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblTimeCreated" runat="server" Width="200px" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Availability" SortExpression="Availability">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Width="200px" Text='<%# Bind("Availability") %>'></asp:Label>
                        </ItemTemplate>
                                        </asp:TemplateField>


                   


                    
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <HeaderStyle Font-Bold="True" ForeColor="#666666" />
                <HeaderStyle Font-Bold="True" ForeColor="#666666" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
               <br />
               <asp:Label ID="lblSuccessMessage" runat="server" Text=""  ForeColor="Green"></asp:Label>
               <br />
               <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
               </td>
                </tr>

                <tr>
                    <td class="modal-lg" style="width: 641px">
                        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="display: inline-block;
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
    width:100px;
    height:35px"/> 
                        
                    </td>
                </tr>
            </table>
</div>
        
        </div>
</asp:Content>
