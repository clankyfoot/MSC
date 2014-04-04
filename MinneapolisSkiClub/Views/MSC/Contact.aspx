<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Contact
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Have questions? View our <%: Html.ActionLink("FAQ (Frequently Asked Questions) page", "Faq", controllerName: "MSC") %></h3>
    <h4>Didn't find an answer? Contact us in any way you choose from below</h4>
    <div>
        <h4>Call us</h4>
        <div>
            <p>Chris Broz (Head coach)</p>
            <p>Phone: (952) 484-8956</p>
        </div>
        <h4>E-Mail us</h4>
        <div>
            <p>Chris@chrisbroz.com</p>
        </div>
        <div>
            <h4>Post your questions on facebook</h4>
            <p><a href="https://www.facebook.com/mnskiclub">Minneapolis Ski Club Fan page</a></p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="StyleContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
