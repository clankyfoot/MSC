<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MSC.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome</h2>
    <p>
        Welcome to the Minneapolis Ski Club website!
    </p>
    <table>
        <tbody>
            <tr>
                <td><a href="http://minneapolisskiclub.wordpress.com/">Go to our Cross Country Skiing</a></td>
                <td><a href="https://www.facebook.com/mnskiclub">Go to ski Jumping</a></td>
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="StyleContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
