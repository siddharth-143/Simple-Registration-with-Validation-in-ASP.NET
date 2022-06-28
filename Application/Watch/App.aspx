<%@ Page Language="C#" AutoEventWireup="true" CodeFile="App.aspx.cs" Inherits="App" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Sign Up start -->
        <div class="container center-page">

            <label style="font-weight: bold">Name</label>
            <div>
                <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="FullName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Full Name is Required !" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
            </div>

            <label style="font-weight: bold">Email</label>
            <div>
                <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email is Required Filed !" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
            </div>

            <label style="font-weight: bold">Mobile</label>
            <div>
                <asp:TextBox ID="tbMobile" runat="server" class="form-control" onkeypress="return this.value.length<=9" placeholder="Mobile" TextMode="Number" MaxLength="2" Rows="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbMobile" ErrorMessage="Mobile Number is Required Field !" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    ControlToValidate="tbMobile" runat="server"
                    ErrorMessage="Only Numbers allowed"
                    ValidationExpression="\d+">
                </asp:RegularExpressionValidator>
                <br />
            </div>

            <div>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Document is Required Filed !" ForeColor="Red" ValidationGroup="B"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Document is Required Filed !" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" ValidationGroup="B" />
                <asp:Label ID="lblMsg1" runat="server"></asp:Label>
            </div>

            <div class="col-xs-11 space-vert center">
                <asp:Button ID="btSignup" runat="server" class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" ValidationGroup="A" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </div>
        <hr />
        <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
            AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="File Name" />
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <!-- Sign Up end -->
    </form>
</body>
</html>
