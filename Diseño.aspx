<%@ Master Language="VB" AutoEventWireup="false" CodeFile="Site.Master.vb" Inherits="Site" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <asp:ContentPlaceHolder ID="HeadContent" runat="server">
    </asp:ContentPlaceHolder>
    </head>
<body>
    <form runat="server">
    <div class="page">
        <div class="header">
            <div class="loginDisplay">
                <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/logo.png" 
                        Height="55%" Width="55%" ImageAlign="Left" 
                         />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>

                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Inicio"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Crear Usuario"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Crear Asunto"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Crear Mensaje"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Crear Departamento"/>
                     
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
            <asp:ContentPlaceHolder ID="MainContent" runat="server"/>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>
