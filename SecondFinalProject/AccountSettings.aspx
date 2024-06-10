<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountSettings.aspx.cs" Inherits="DBAttempt.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<input type="text" name="username" id="username" />
<input type="text" name="password" id="password" /> 

<input type="text" placeholder="receiver" id="receiver" name="receiver" />
<input type="text" placeholder="prestiges" id="prestiges" />
    <script>
        function sessionGetter() {
            document.getElementById("receiver").value = sessionStorage.getItem("balance");
            document.getElementById("username").value = sessionStorage.getItem("username").replace("\"","");
            document.getElementById("password").value = sessionStorage.getItem("pass").replace("\"", "");
            document.getElementById("prestiges").value = (sessionStorage.getItem("serverPrestige")).replace("\"", "");
            document.getElementById("prestiges").value = (sesssionStorage.getItem("presigeCount")).replace("\"", "");
            document.getElementById("prestiges").value = (sessionStorage.getItem("presC")).replace("\"","");
        }
        function accountDetailsSessionStarter() {
            sessionStorage.setItem("AccountDetailsBalance", (JSON.stringify((document.getElementById("receiver")).value)).replace("\"", ""));
        }
    </script>
</asp:Content>
