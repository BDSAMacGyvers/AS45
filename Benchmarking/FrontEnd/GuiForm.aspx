<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuiForm.aspx.cs" Inherits="FrontEnd.GuiForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="auto-style3">
                    Please enter user name: 
                    <br />
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="auto-style1" OnTextChanged="nameTextBox_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    From
                    <asp:Calendar ID="fromDate" runat="server" SelectedDate="2011-07-01"></asp:Calendar>
                    <br />
                    To
                    <asp:Calendar ID="toDate" runat="server" OnSelectionChanged="toDate_SelectionChanged" SelectedDate="11/08/2012 15:21:36"></asp:Calendar>
                    <br />
                    <asp:Button ID="SearchButton" runat="server" Text="Search" />                 
                </td>
                <td class="auto-style2">
                    <div >
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="LoggerDB">
                            <AlternatingItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Label ID="jobIdLabel" runat="server" Text='<%# Eval("jobId") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="timeStampLabel" runat="server" Text='<%# Eval("timeStamp") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="jobStateLabel" runat="server" Text='<%# Eval("jobState") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="userLabel" runat="server" Text='<%# Eval("user") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="jobIdTextBox" runat="server" Text='<%# Bind("jobId") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="timeStampTextBox" runat="server" Text='<%# Bind("timeStamp") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="jobStateTextBox" runat="server" Text='<%# Bind("jobState") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="userTextBox" runat="server" Text='<%# Bind("user") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="jobIdTextBox" runat="server" Text='<%# Bind("jobId") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="timeStampTextBox" runat="server" Text='<%# Bind("timeStamp") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="jobStateTextBox" runat="server" Text='<%# Bind("jobState") %>' />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="userTextBox" runat="server" Text='<%# Bind("user") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Label ID="jobIdLabel" runat="server" Text='<%# Eval("jobId") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="timeStampLabel" runat="server" Text='<%# Eval("timeStamp") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="jobStateLabel" runat="server" Text='<%# Eval("jobState") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="userLabel" runat="server" Text='<%# Eval("user") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr runat="server" style="">
                                                    <th runat="server">jobId</th>
                                                    <th runat="server">timeStamp</th>
                                                    <th runat="server">jobState</th>
                                                    <th runat="server">Id</th>
                                                    <th runat="server">user</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style=""></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Label ID="jobIdLabel" runat="server" Text='<%# Eval("jobId") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="timeStampLabel" runat="server" Text='<%# Eval("timeStamp") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="jobStateLabel" runat="server" Text='<%# Eval("jobState") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="userLabel" runat="server" Text='<%# Eval("user") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="LoggerDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DbLogs]"></asp:SqlDataSource>
                    </div>    
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
