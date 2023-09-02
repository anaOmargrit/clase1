<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Casadx" GroupName="ecivil" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Viudx" GroupName="ecivil" />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Solterx" GroupName="ecivil" />
            <asp:RadioButtonList ID="Nacionalidad" runat="server">
                <asp:ListItem Value="1">Nacional</asp:ListItem>
                <asp:ListItem Value="2">Extranjero</asp:ListItem>
            </asp:RadioButtonList>
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Educación Primaria" />

            <asp:CheckBox ID="CheckBox2" runat="server" Text="Educación secundaria" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Educación terciaria" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>
            <br />
            <asp:DropDownList ID="lista_nac" runat="server" OnSelectedIndexChanged="lista_nac_SelectedIndexChanged">
                <asp:ListItem Value="arg">Argentina</asp:ListItem>
                <asp:ListItem Value="uru">Uruguay</asp:ListItem>
                <asp:ListItem Value="per">Perú</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ListBox ID="lista_prov" runat="server" AutoPostBack="True"></asp:ListBox>
            <br />
            <asp:Label ID="Mostrar" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Btn_Aceptar" />
        </div>
    </form>
</body>
</html>
