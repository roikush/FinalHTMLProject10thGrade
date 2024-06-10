<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="DBAttempt.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .label{
           position:absolute;top:30px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post">
        <asp:Label runat="Server" id="myLabel" Enabled="false" CssClass="label" />

    <input type="text" placeholder="Username" name="username" id="username" style="position:absolute;top:50px;"   />
    <input type="text" placeholder="Password" name="password" id="password" style="position:absolute;top:50px;left:190px;" />
    <input type="submit" name="submit" id="submit"  onclick="sessionStarterForName()" style="position:absolute;top:50px;left:370px;" />

        </form>
    <script>
    

        

        function sessionStarterForName() {
            sessionStorage.setItem('username', (JSON.stringify(document.getElementById("username").value)).replace("\"", ""));
            sessionStorage.setItem('pass', (JSON.stringify(document.getElementById("password").value)).replace("\"", ""));
        }
        sessionStorage.setItem('serverBalance', (JSON.stringify(document.getElementById("serverBalance").value)).replace("\"", ""));
        document.getElementById("serverBal").value = sessionStorage.getItem("serverBalance").replace("\"", "");
        sessionStorage.setItem('serverPrestige', (JSON.stringify(document.getElementById("serverPres").value)).replace("\"", ""));
    </script>
</asp:Content>
