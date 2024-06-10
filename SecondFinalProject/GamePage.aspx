<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GamePage.aspx.cs" Inherits="DBAttempt.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .classer{
        visibility:hidden;
        }



        .costTexts{
            width:15px;
        }

        .gameComfort{
           position:absolute;top:100px;
           
        }


        .rounder{
            border:1px solid rgb(192, 206, 12);
            border-radius:25px;
        

        }

        .clickSellClass{
          /*  background-color:#888888;
            color:black;
            box-shadow: 3px 4px #888888;
            border-color:#888888;
  */   
            opacity:0.4;
            transform:scale(0.8);
            
        }


       .someClass {
            animation: dollarGainAnimation 0.27s ease-out infinite;
            opacity:0.6;
            pointer-events:none;
       }
        @keyframes dollarGainAnimation {
            0%{
               /* position:absolute;left:100px;
                   */
               transform:scale(20);
            }
            100%{
                /*
                position:absolute;top:50px;left:115px;*/
               transform: scale(30);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <form method="post" onmouseover="return sessionStarter(),test(),ifTest();">
        <!--For forms inputs-->
        <input type="text" name="namer" id="namer" hidden />
        <input type="text" name="passer" id="passer" hidden />
        <input type="button" name="loadGame" id="loadGame" onclick="onclicked()" value="load game?" style="height:500px; width:500px; font-size:70px" />
        <input type="button" name="newGame" id="newGame" onclick="clicka()" value="new game?(Will restart EVERYTHING)" style="height:500px; width:650px; font-size:35px; position:absolute;" />
        <!--end of them-->



<svg class="classer" style="position:absolute;top:40%;left:50%;" version="1.1" id="9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="64px" height="64px" viewBox="-512 -512 1536.00 1536.00" xml:space="preserve" fill="#000000" stroke="#000000" stroke-width="0.00512"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <style type="text/css">  .st0{fill:#85BB65;}  </style> <g> <path class="st0" d="M406.195,383.984c-8.391,15.734-19.922,28.859-34.516,39.609c-14.656,10.719-32.188,18.703-52.563,23.969 c-8.906,2.25-18.234,3.813-27.703,5.094V512h-70.828v-58.156c-20.172-1.703-39.453-4.844-57.609-9.844 c-27.719-7.594-64.016-38.25-64.016-38.25c-3.109-1.813-5.172-5-5.609-8.531c-0.453-3.563,0.766-7.156,3.313-9.688l35.484-35.5 c3.828-3.781,9.766-4.5,14.359-1.688c0,0,26.563,23.063,46.688,28.563c20.125,5.469,40.094,8.219,60.016,8.219 c25.125,0,45.891-4.438,62.359-13.313c16.5-8.938,24.719-22.75,24.719-41.625c0-13.594-4.031-24.313-12.172-32.188 c-8.109-7.813-21.828-12.734-41.188-14.891l-63.563-5.469c-37.641-3.672-66.672-14.172-87.063-31.375 c-20.453-17.266-30.609-43.453-30.609-78.453c0-19.375,3.906-36.625,11.766-51.797c7.875-15.172,18.563-27.984,32.172-38.422 c13.594-10.469,29.438-18.313,47.469-23.531c7.547-2.188,15.453-3.625,23.484-4.938V0h70.828v50.094 c16.531,1.625,32.266,4.281,46.906,8.313c24.844,6.781,50.938,27.188,50.938,27.188c3.266,1.688,5.484,4.875,6.047,8.5 c0.563,3.688-0.641,7.313-3.219,9.969l-33.281,33.781c-3.547,3.594-9.031,4.531-13.563,2.188c0,0-19.703-14.031-36.734-18.469 c-17.016-4.438-34.891-6.688-53.719-6.688c-24.609,0-42.797,4.719-54.531,14.109c-11.781,9.453-17.625,21.734-17.625,36.875 c0,13.641,4.109,24.078,12.531,31.359c8.359,7.344,22.469,12.109,42.359,14.125l55.703,4.75 c41.297,3.656,72.563,14.625,93.734,32.922c21.203,18.328,31.781,45.016,31.781,80.016 C418.742,350.016,414.554,368.281,406.195,383.984z"></path> </g> </g></svg>
        <svg class="classer" style="position:absolute;top:40%;left:75%;" version="1.1" id="99" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="64px" height="64px" viewBox="-512 -512 1536.00 1536.00" xml:space="preserve" fill="#000000" stroke="#000000" stroke-width="0.00512"><g id="SVGRepo_bgCarrier2" stroke-width="0"></g><g id="SVGRepo_tracerCarrier2" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier2"> <style type="text/css">  .st0{fill:#85BB65;}  </style> <g> <path class="st0" d="M406.195,383.984c-8.391,15.734-19.922,28.859-34.516,39.609c-14.656,10.719-32.188,18.703-52.563,23.969 c-8.906,2.25-18.234,3.813-27.703,5.094V512h-70.828v-58.156c-20.172-1.703-39.453-4.844-57.609-9.844 c-27.719-7.594-64.016-38.25-64.016-38.25c-3.109-1.813-5.172-5-5.609-8.531c-0.453-3.563,0.766-7.156,3.313-9.688l35.484-35.5 c3.828-3.781,9.766-4.5,14.359-1.688c0,0,26.563,23.063,46.688,28.563c20.125,5.469,40.094,8.219,60.016,8.219 c25.125,0,45.891-4.438,62.359-13.313c16.5-8.938,24.719-22.75,24.719-41.625c0-13.594-4.031-24.313-12.172-32.188 c-8.109-7.813-21.828-12.734-41.188-14.891l-63.563-5.469c-37.641-3.672-66.672-14.172-87.063-31.375 c-20.453-17.266-30.609-43.453-30.609-78.453c0-19.375,3.906-36.625,11.766-51.797c7.875-15.172,18.563-27.984,32.172-38.422 c13.594-10.469,29.438-18.313,47.469-23.531c7.547-2.188,15.453-3.625,23.484-4.938V0h70.828v50.094 c16.531,1.625,32.266,4.281,46.906,8.313c24.844,6.781,50.938,27.188,50.938,27.188c3.266,1.688,5.484,4.875,6.047,8.5 c0.563,3.688-0.641,7.313-3.219,9.969l-33.281,33.781c-3.547,3.594-9.031,4.531-13.563,2.188c0,0-19.703-14.031-36.734-18.469 c-17.016-4.438-34.891-6.688-53.719-6.688c-24.609,0-42.797,4.719-54.531,14.109c-11.781,9.453-17.625,21.734-17.625,36.875 c0,13.641,4.109,24.078,12.531,31.359c8.359,7.344,22.469,12.109,42.359,14.125l55.703,4.75 c41.297,3.656,72.563,14.625,93.734,32.922c21.203,18.328,31.781,45.016,31.781,80.016 C418.742,350.016,414.554,368.281,406.195,383.984z"></path> </g> </g></svg>
<svg class="classer" style="position:absolute;top:40%;left:25%;" version="1.1" id="999" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="64px" height="64px" viewBox="-512 -512 1536.00 1536.00" xml:space="preserve" fill="#000000" stroke="#000000" stroke-width="0.00512"><g id="SVGRepo_bgCarrier3" stroke-width="0"></g><g id="SVGRepo_tracerCarrier3" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier3"> <style type="text/css">  .st0{fill:#85BB65;}  </style> <g> <path class="st0" d="M406.195,383.984c-8.391,15.734-19.922,28.859-34.516,39.609c-14.656,10.719-32.188,18.703-52.563,23.969 c-8.906,2.25-18.234,3.813-27.703,5.094V512h-70.828v-58.156c-20.172-1.703-39.453-4.844-57.609-9.844 c-27.719-7.594-64.016-38.25-64.016-38.25c-3.109-1.813-5.172-5-5.609-8.531c-0.453-3.563,0.766-7.156,3.313-9.688l35.484-35.5 c3.828-3.781,9.766-4.5,14.359-1.688c0,0,26.563,23.063,46.688,28.563c20.125,5.469,40.094,8.219,60.016,8.219 c25.125,0,45.891-4.438,62.359-13.313c16.5-8.938,24.719-22.75,24.719-41.625c0-13.594-4.031-24.313-12.172-32.188 c-8.109-7.813-21.828-12.734-41.188-14.891l-63.563-5.469c-37.641-3.672-66.672-14.172-87.063-31.375 c-20.453-17.266-30.609-43.453-30.609-78.453c0-19.375,3.906-36.625,11.766-51.797c7.875-15.172,18.563-27.984,32.172-38.422 c13.594-10.469,29.438-18.313,47.469-23.531c7.547-2.188,15.453-3.625,23.484-4.938V0h70.828v50.094 c16.531,1.625,32.266,4.281,46.906,8.313c24.844,6.781,50.938,27.188,50.938,27.188c3.266,1.688,5.484,4.875,6.047,8.5 c0.563,3.688-0.641,7.313-3.219,9.969l-33.281,33.781c-3.547,3.594-9.031,4.531-13.563,2.188c0,0-19.703-14.031-36.734-18.469 c-17.016-4.438-34.891-6.688-53.719-6.688c-24.609,0-42.797,4.719-54.531,14.109c-11.781,9.453-17.625,21.734-17.625,36.875 c0,13.641,4.109,24.078,12.531,31.359c8.359,7.344,22.469,12.109,42.359,14.125l55.703,4.75 c41.297,3.656,72.563,14.625,93.734,32.922c21.203,18.328,31.781,45.016,31.781,80.016 C418.742,350.016,414.554,368.281,406.195,383.984z"></path> </g> </g></svg>

        <div class="classer" id="divver">


        <input type="text" name="balance" id="balance" value="0" disabled class="rounder" style="height:50px; font-size:30px;position:absolute;top:90%;left:40% "/>

        <input type="button" id="seller" name="seller" value="Sell 0.1L Alco-Gel" class="rounder"  onclick="return addBalance(), sessionStarter(), balanceGet();" style="position:absolute;top:83%;left:50%; height:40px;"/>
  
        <input type="submit" name="saver" id="saver" class="rounder" value="Save game" style="position:absolute;top:0px;left:1135px;"  onclick="sessionGet()"/>
       
        <input type="text" disabled placeholder="console" class="rounder" name="console" id="console" style="position:absolute;left:80%;top:90%; height:53.9px; width:235.31px; background-color:black;" />
        

        <!--First Upgrade-->

        <input type="text" value="40" style="position:absolute;top:150px;left:9px; width:15px;" class="gameComfort rounder"  disabled name="FirstUpgrade" id="FirstUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:150px;left:35px;" id="firstButton" name="firstButton"  class="gameComfort rounder"  onclick="upgrade(FirstUpgrade,first,firstButton)" />
        <input type="text" value="3" class="rounder" name="first" id="first" hidden disabled />


        <!--Second Upgrade-->
            
        <input type="text" value="250"  disabled name="SecondUpgrade" id="SecondUpgrade" class="gameComfort rounder" style="position:absolute;top:180px;left:9px; width:23px;"/>
        <input type="button" value="buy"  class="gameComfort rounder"  id="secondButton" name="secondButton" style="position:absolute;top:180px;left:43px;" onclick="upgrade(SecondUpgrade,second,secondButton)" />
        <input type="text" value="15" name="second" id="second" hidden disabled />


        <!--Third Upgrade-->
            
        <input type="text" value="1000"  disabled name="ThirdUpgrade" id="ThirdUpgrade"  class="gameComfort rounder"  style="width:30px;position:absolute;top:210px;left:9px;"/>
        <input type="button" value="buy" style="position:absolute;top:210px;left:50px;"  class="gameComfort rounder"  id="thirdButton" name="thirdButton" onclick="upgrade(ThirdUpgrade,third,thirdButton)" />
        <input type="text" value="80" name="third" id="third" hidden disabled class="rounder" />


        <!--Employee-->

            <input type="text" value="John"  class="gameComfort rounder"  style="position:absolute;top:240px;left:9px; width:30px;" disabled />
            <input type="button" id="1"  class="gameComfort rounder"  value="Hire, 10000" style="position:absolute;top:240px;left:51px" onclick="employee(document.getElementById(1111).value,1,1000,111,11111)" />
            <input type="button" id="11" value="Upgrade John" style="position:absolute;top:240px;left:51px" class="gameComfort rounder"  onclick="upgradeEmployee(1000,1,document.getElementById(1111).value,111,1111,111111)" hidden  />
            <input type="text" value="unBought" id="11111" class="classer rounder"/><!--employeeCheckNum-->
            <input type="text" value="1000" id="111" hidden class="rounder"/>    <!--speedId--> 
            <input type="text" value="10000" id="1111" hidden class="rounder" /><!--employeeCostId-->
            <input type="text" value="1" id="111111" hidden class="rounder" /><!--employeeLevel-->



        <!--Fourth Upgrade-->
        <input type="text" value="25000" style="position:absolute;top:270px;left:9px; width:40px;" class="gameComfort rounder"  disabled name="FourthUpgrade" id="FourthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:270px;left:61px;" id="fourthButton" name="fourthButton"  class="gameComfort rounder"  onclick="upgrade(FourthUpgrade,fourth,fourthButton)" />
        <input type="text" value="250" name="fourth" id="fourth" hidden disabled class="rounder" />


        <!--Fifth Upgrade-->
        <input type="text" value="100000" style="position:absolute;top:300px;left:9px; width:45px;" class="gameComfort rounder"  disabled name="FifthUpgrade" id="FifthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:300px;left:65px;" id="fifthButton" name="fifthButton"  class="gameComfort rounder"  onclick="upgrade(FifthUpgrade,fifth,fifthButton)" />
        <input type="text" value="750" name="fifth" id="fifth" hidden disabled />

        <!--Sixth Upgrade-->
        <input type="text" value="350000" style="position:absolute;top:330px;left:9px; width:43px;" class="gameComfort rounder"  disabled name="SixthUpgrade" id="SixthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:330px;left:65px;" id="sixthButton" name="sixthButton"  class="gameComfort rounder"  onclick="upgrade(SixthUpgrade,sixth,sixthButton)" />
        <input type="text" value="1500" name="sixth" id="sixth" hidden disabled class="rounder" />

        <!--Seventh Upgrade-->
        <input type="text" value="1000000" style="position:absolute;top:360px;left:9px; width:51px;" class="gameComfort rounder"  disabled name="SeventhUpgrade" id="SeventhUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:360px;left:71px;" id="seventhButton" name="seventhButton"  class="gameComfort rounder"  onclick="upgrade(SeventhUpgrade,seventh,seventhButton)" />
        <input type="text" value="3000" name="seventh" id="seventh" hidden disabled class="rounder" />




        <!--Second Employee-->


            <input type="text" value="Tyrone"  class="gameComfort rounder"  style="position:absolute;top:390px;left:9px; width:40px;" disabled />
            <input type="button" id="2"  class="gameComfort rounder"  value="Hire, 2500000" style="position:absolute;top:390px;left:60px" onclick="employee(document.getElementById(2222).value,2,1000,222,22222)" />
            <input type="button" id="22" value="Upgrade Tyrone" style="position:absolute;top:390px;left:60px" class="gameComfort rounder"  onclick="upgradeEmployee(1000,2,document.getElementById(2222).value,222,2222,222222)" hidden  />
            <input type="text" value="unBought" id="22222" class="classer rounder"/>
            <input type="text" value="500" id="222" hidden class="rounder"/>    <!--speedId--> 
            <input type="text" value="2500000" id="2222" hidden class="rounder" /><!--employeeCostId-->
            <input type="text" value="1" id="222222" hidden class="rounder" /><!--employeeLevel-->


         <!--Eighth Upgrade-->
        <input type="text" value="6500000" style="position:absolute;top:420px;left:9px; width:50.5px;" class="gameComfort rounder"  disabled name="EightUpgrade" id="EighthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:420px;left:71px;" id="eighthButton" name="eighthButton"  class="gameComfort rounder"  onclick="upgrade(EighthUpgrade,eighth,eighthButton)" />
        <input type="text" value="5000" name="eighth" id="eight" hidden disabled />


        <!--Ninth Upgrade-->
        <input type="text" value="13500000" style="position:absolute;top:450px;left:9px; width:57.5px;" class="gameComfort rounder"  disabled name="NinthUpgrade" id="NinthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:450px;left:78px;" id="ninthButton" name="ninthButton"  class="gameComfort rounder"  onclick="upgrade(NinthUpgrade,ninth,ninthButton)" />
        <input type="text" value="10000" name="ninth" id="ninth" hidden disabled class="rounder" />

        <!--Tenth Upgrade-->
        <input type="text" value="20000000" style="position:absolute;top:480px;left:9px; width:57.5px;" class="gameComfort rounder"  disabled name="TenthUpgrade" id="TenthUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:480px;left:78px;" id="tenthButton" name="tenthButton"  class="gameComfort rounder"  onclick="upgrade(TenthUpgrade,tenth,tenthButton)" />
        <input type="text" value="17500" name="tenth" id="tenth" hidden disabled class="rounder" />

        <!--Eleventh Upgrade-->
        <input type="text" value="35000000" style="position:absolute;top:510px;left:9px; width:57.5px;" class="gameComfort rounder"  disabled name="EleventhUpgrade" id="EleventhUpgrade" />
        <input type="button" value="buy" style="position:absolute;top:510px;left:78px;" id="eleventhButton" name="eleventhButton"  class="gameComfort rounder"  onclick="upgrade(EleventhUpgrade,eleventh,eleventhButton)" />
        <input type="text" value="30000" name="eleventh" id="eleventh" hidden disabled class="rounder" />
        

            <!--Third Employee-->
            <input type="text" value="Derick"  class="gameComfort rounder"  style="position:absolute;top:540px;left:9px; width:37px;" disabled />
            <input type="button" id="3"  class="gameComfort rounder"  value="Hire, 40000000" style="position:absolute;top:540px;left:57px" onclick="employee(document.getElementById(3333).value,3,1000,333,33333)" />
            <input type="button" id="33" value="Upgrade John" style="position:absolute;top:540px;left:51px" class="gameComfort rounder"  onclick="upgradeEmployee(1000,3,document.getElementById(3333).value,333,3333,333333)" hidden  />
            <input type="text" value="unBought" id="33333" class="classer rounder"/><!--employeeCheckNum-->
            <input type="text" value="250" id="333" hidden class="rounder"/>    <!--speedId--> 
            <input type="text" value="40000000" id="3333" hidden class="rounder" /><!--employeeCostId-->
            <input type="text" value="1" id="333333" hidden /><!--employeeLevel-->



            <!--PRESTIGE-->
            <asp:Label runat="Server" id="myLabel"/>
            <input type="button" onclick="prestige()" class="rounder" value="PRESTIGE(Resets everything, but income times 2)" id="prestigeButton" name="prestigeButton" style="height:40px;width:315px;position:absolute;top:0%;left:40%"/>
            <input type="text" value="1" id="107" class="rounder" style="width:10px; position:relative;left:85px;top:10px;" name="107" disabled />
            <input type="submit" hidden id="finalPrestige" value="Prestige?" name="finalPrestige" onclick="sessionGet()"/>
            <!--Misc Elements-->
            <input type="text" value="0" id="becomeOne" hidden />
            <input type="text" value="0" id="IhateHTML" name="IhateHTML" hidden/>
        </div>
        </form>
<script>
    let audio = new Audio('Sounds/BackgroundMusic.mp3');
    audio.play();

    if (parseInt((sessionStorage.getItem("prestigeCount")).replace("\"", "")) > 1) {
        document.getElementById("107").value = parseInt(sessionStorage.getItem("prestigeCount").replace("\"", ""));
        document.getElementById("becomeOne").value = 1;
        sessionStorage.setItem("onner", ((JSON.stringify(document.getElementById("becomeOne").value).replace("\"", "")).replace("\"", "")));


    }
    if (parseInt(document.getElementById("108").value) > 1) {

        document.getElementById("107").value = document.getElementById("108").value;
        document.getElementById("becomeOne").value = 1;
        sessionStorage.setItem("onner", ((JSON.stringify(document.getElementById("becomeOne").value).replace("\"", "")).replace("\"", "")));


    }

    function prestige() {
        var prestigeValue = parseInt(document.getElementById("107").value);
        var prestigeCost = (prestigeValue + 100000000) * (prestigeValue * prestigeValue);
        if (parseInt(document.getElementById("balance").value) - prestigeCost >= 0)
        {
            document.getElementById("107").disabled = false;
            document.getElementById("balance").value = 0;
            prestigeValue += 1;
            document.getElementById("107").value = parseInt(prestigeValue);
            document.getElementById("finalPrestige").click();
            sessionStorage.setItem("prestigeCount", (JSON.stringify(document.getElementById("107").value)).replace("\"", ""));
            document.getElementById("balance").value = 0;
            document.getElementById("IhateHTML").value = 0;
            document.getElementById("killMe").value = 0;
            document.getElementById("getChangedBalance").value = 0;
            sessionStorage.setItem("boolPrestige", "true");
            document.getElementById("finalPrestige").click();
        }
        else {
            document.getElementById("console").value = "Prestige cost: " + prestigeCost;
        }
    }




    function upgradeEmployee(num, hiredId, employeePriced, speedId, employeeCostId,employeeLevel) {
        if (parseInt(document.getElementById(employeeLevel).value) == 7) {
            document.getElementById("console").value = "Employee maxed out!";
            document.getElementById(hiredId + "" + hiredId).className = "classer";
            document.getElementById(9).classList.remove("classer");
            document.getElementById(99).classList.remove("classer");
            document.getElementById(999).classList.remove("classer");

            document.getElementById(9).classList.add("someClass");
            document.getElementById(99).classList.add("someClass");
            document.getElementById(999).classList.add("someClass");
            sessionStarter();
            return 0 ;
        }   
        else {
            if (parseInt(document.getElementById(employeeLevel).value) == 1) {
                document.getElementById(employeeCostId).value = parseInt((document.getElementById(employeeCostId).value) * 2);
            }
            employeePriced = parseInt(document.getElementById(employeeCostId).value);
     
            num = document.getElementById(speedId).value;
            document.getElementById(hiredId + "" + hiredId).hidden = false;
            var cost = document.getElementById(employeeCostId).value;
            if (document.getElementById(hiredId + "" + hiredId).value == "Upgrade employee, " + employeePriced * 2) {
                cost = cost.replace("Upgrade employee, ", "");

            }

            if ((parseInt(document.getElementById("balance").value) - parseInt(cost)) > 0) {
                document.getElementById(employeeLevel).value = parseInt(document.getElementById(employeeLevel).value) + 1;
                num /= 2;
                document.getElementById(speedId).value = num;
                document.getElementById("balance").value -= cost;
                document.getElementById(employeeCostId).value = document.getElementById(employeeCostId).value * 2;
                employeePriced = parseInt(document.getElementById(employeeCostId).value);

                document.getElementById("console").value = "Employee upgraded successfully";
                document.getElementById(hiredId + "" + hiredId).value = "Upgrade employee, " + employeePriced;

            }
            else {
                document.getElementById("console").value = "You're broke..";
            }

        }
    }
    function getEmployee(num, hiredId, employeePriced, speedId) {
        num = document.getElementById(speedId).value;
        document.getElementById(hiredId + "" + hiredId).hidden = false;

        var finalSpeed = document.getElementById(speedId).value;
        return finalSpeed;
    }
    
    function employee(employeePrice, hireId, speed, speedId, employeeCheckNum) {
        if (document.getElementById(employeeCheckNum).value == "unBought") {
            if ((parseInt(document.getElementById("balance").value) - parseInt(employeePrice)) > 0) {
                document.getElementById("balance").value -= employeePrice;
                document.getElementById("console").value = "Hired Succesfully";
                document.getElementById(employeeCheckNum).value = "bought";
                document.getElementById(hireId).hidden = true;
                document.getElementById(hireId + "" + hireId).value = "Upgrade employee, " + employeePrice * 2;

                employee(employeePrice, hireId, speed, speedId,employeeCheckNum);
            }
            else {
                document.getElementById("console").value = "You're broke...";
                return;
            }
        }
        else {
            var speedPar = getEmployee(speed, hireId, employeePrice, speedId);

            setTimeout(() => {
                    document.getElementById("seller").click();
            }, speedPar);

            setTimeout(() => {

                employee(employeePrice, hireId, speed, speedId, employeeCheckNum);
            }, speedPar);

            }
    }

    function test() {
        document.getElementById("forLoaded").value = sessionStorage.getItem("loaded");
        if (document.getElementById("forLoaded").value == "loaded") {
           document.getElementById("loadGame").hidden = true;
           document.getElementById("newGame").hidden = true;
            document.getElementById("divver").className = "";

          //document.getElementById("balance").value = document.getElementById("killMe").value;
            //document.getElementById("balance").value = parseInt((sessionStorage.getItem("balance")).replace("\"", ""));
          //    document.getElementById("balance").value = (sessionStorage.getItem('AccountDetailsBalance')).replace("\"", "");
                // document.getElementById("getChangedBalance").value = (sessionStorage.getItem('balance')).replace("\"", "");
                document.getElementById("seller").click();

            test = undefined;           

        }
      
    }
    function ifTest() {
        if (test == undefined && document.getElementById("IhateHTML").value==0) {
            document.getElementById("balance").value = document.getElementById("killMe").value;
        }
        if (sessionStorage.getItem("boolPrestige") == "true") {
            document.getElementById("balance").value = 0;
       }
        document.getElementById("IhateHTML").value = 1;

    }

    function balanceGet() {
       document.getElementById("getChangedBalance").value = (sessionStorage.getItem("balance")).replace("\"","");

    }
    function sessionGet() {
        document.getElementById("namer").value = (sessionStorage.getItem("username")).replace("\"", "");
        document.getElementById("passer").value = (sessionStorage.getItem("pass")).replace("\"", "");
        document.getElementById("balance").disabled = false;
    }




    function addBalance() {

        var num = parseInt(document.getElementById("balance").value);

        var x = ((document.getElementById("seller")).value.replace("Sell", ""));

        var y = x.replace("Alco-Gel", "");

        var z = y.replace("L", "");

        var parsedValue = parseInt(z);
        var nummer = (z * 10);
        nummer *= document.getElementById("107").value;
        document.getElementById("balance").value = parseInt(parseInt(document.getElementById("balance").value) + parseInt(nummer));
        document.getElementById("seller").classList.add("clickSellClass");
        setTimeout(() => {
            document.getElementById("seller").classList.remove("clickSellClass");
        }, 100);
       
    }


    function sessionStarter() {
            sessionStorage.setItem('balance', JSON.stringify(parseInt(document.getElementById("balance").value)).replace("\"", ""));
        
        sessionStorage.setItem("presC", JSON.stringify(parseInt(document.getElementById("107").value)).replace("\"",""));

    }
    function play() {
        let caching = new Audio('Sounds/Caching.mp3');

        caching.play();
    }
    function upgrade(Upgrade,numUpgrade,button) {
        var UpgradePrice = Upgrade.value;
        if (parseInt(document.getElementById("balance").value) >= UpgradePrice) {
            document.getElementById("balance").value -= UpgradePrice;
            Upgrade.hidden = true;
            document.getElementById("console").value = numUpgrade.id + " upgrade has been bought!";
            var x = numUpgrade.value;
            x = x / 10;
            z = document.getElementById("seller").value;
            z = z.replace("Sell", "");
            z = z.replace("L Alco-Gel", "");
            z = parseInt(z);
            document.getElementById("seller").value = "Sell " + (0.1 + x + z) + "L Alco-Gel";
            document.getElementById(button.id).hidden = true;
            play();

        }
        else {
            document.getElementById("console").value="You're broke.."
        }

    }


    
    function onclicked() {
        if (document.getElementById("forLoaded").value != "loaded" && (sessionStorage.getItem("username")).replace("\"", "") !=null ) {

            if (!(document.getElementById("serverBal").value <= 0)) {
                document.getElementById("becomeOne").value = sessionStorage.getItem("onner");
                document.getElementById("balance").value = document.getElementById("serverBal").value;
                document.getElementById("loadGame").hidden = true;
                document.getElementById("newGame").hidden = true;
                document.getElementById("divver").className = "";
                document.getElementById("forLoaded").value = "loaded";

                sessionStorage.setItem("loaded", (document.getElementById("forLoaded")).value);


                if (parseInt(document.getElementById("becomeOne").value) == 1) {

                }




                if (parseInt(((sessionStorage.getItem("serverPrestige")).replace("\"", ""))) >1) {
                    document.getElementById("107").value = parseInt((sessionStorage.getItem("serverPrestige")).replace("\"", ""));
                    document.getElementById("becomeOne").value = 1;
                    sessionStorage.setItem("onner", ((JSON.stringify(document.getElementById("becomeOne").value).replace("\"", "")).replace("\"", "")));
                }
       



  
            }
            else {

                document.getElementById("loadGame").hidden = true;
                document.getElementById("newGame").hidden = true;
                document.getElementById("divver").className = "";
                document.getElementById("balance").value = 0;
                document.getElementById("forLoaded").value = "loaded";
                sessionStorage.setItem("loaded", (document.getElementById("forLoaded")).value);
            }
        }
        else {
            document.getElementById("divver").className = "";
            document.getElementById("loadGame").hidden = true;
            document.getElementById("newGame").hidden = true;


        }

    }
    function clicka() {
        if (document.getElementById("forLoaded").value != "loaded") {

            document.getElementById("loadGame").hidden = true;
            document.getElementById("newGame").hidden = true;
            document.getElementById("divver").className = "";
            document.getElementById("forLoaded").value = "loaded";
            sessionStorage.setItem("loaded", (document.getElementById("forLoaded")).value);


        }
        else {
            document.getElementById("loadGame").hidden = true;
            document.getElementById("newGame").hidden = true;
            document.getElementById("divver").className = "";

        }
    }

    
</script>
</asp:Content>
