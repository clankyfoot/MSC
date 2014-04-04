<%@ page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Schedule
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="NavContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>The Full break down schedule</h3>
    <div>
        <h1>Fall Scheduel comming soon!</h1>
    </div>
    <form runat="server">
        <fieldset>
            <%: Html.AntiForgeryToken() %>
            <legend>Sign up for schedule reminders</legend>
            <div>
                <label>Name: </label><input type="text" />
            </div>
            <div>
                <label>*Email: </label><input type="email" required="required"/>
            </div>
            <div>
                <input value="register me" type="submit" />
            </div>
        </fieldset>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="StyleContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
