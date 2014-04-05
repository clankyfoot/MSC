<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MSC.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Welcome
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 60%; margin: auto;">
        <h2 style="text-align: center;">Welcome</h2>
        <p>Welcome to the Minneapolis Ski Club website!</p>
        <p>Choose which type of skier you are!</p>
    </div>
    <table id="main-nav">
        <tbody>
            <tr>
                <td style="float: left;"><a href="http://minneapolisskiclub.wordpress.com/">Go to Cross <br />Country Skiing</a></td>
                <td style="float: right;"><a href="https://www.facebook.com/mnskiclub">Go to ski Jumping</a></td>
            </tr>
        </tbody>
    </table>
</asp:Content>
