<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DBAttempt.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post">
    <input type="text" placeholder="Username" onkeyup="chk()" name="username" id="username" />
        <p style="font-size:13px; position:absolute;top:45px;" id="response"></p>
    <input type="text" placeholder="Password" name="password" id="password" />
    <input type="submit" placeholder="submit" name="submit1" id="submit1" />
        </form>



    <script>
        function chk() {
            var userLength = (document.getElementById("username")).value;
            userLength = userLength.length;
            var username = (document.getElementById("username").value);

            if (chkCharacters(username) == false) {
                document.getElementById("response").innerHTML = "Username contains forbidden characters";
            }
           

            else if (userLength < 3) {
                document.getElementById("response").innerHTML = "Username too short";
            }
            else {
                document.getElementById("response").innerHTML = "";
            }
            if (document.getElementById("response").innerHTML != "") {
                document.getElementById("submit1").disabled = true;
            }
            else if (document.getElementById("response").innerHTML == "") {
                document.getElementById("submit1").disabled = false;    
            }
            
        }
        function chkCharacters(user) {
            var characters = "1234567890!`~|/.><,;:'[]{}()*&^%$#@_+=-";
            for (var i = 0; i < user.length; i++) {
                for (var j = 0; j < characters.length; j++) {
                    if (user.charAt(i) == characters.charAt(j)) {
                        return false;
                    }
                }
            }
            return true;
        }

    </script>
</asp:Content>
