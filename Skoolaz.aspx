<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skoolaz.aspx.cs" Inherits="Skoolaz.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="https://fonts.googleapis.com/css?family=Asap" rel="stylesheet"/>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
   <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"crossorigin="anonymous"/>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
         <link rel="stylesheet" href="Layers/Style.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title></title>
</head>
<body>
   <form class="login" runat="server">
       <div id="LoginError" class="alert alert-danger" role="alert" runat="server">
               Incorrect Username/Password
                    </div>
       <div id="login_div" class="text-center" runat="server">
  <input id="username" class="shadow-sm" type="text" placeholder="Username" runat="server" autocomplete="off" required="required"/>
  <input id="password" class="shadow-sm" type="password" placeholder="Password" runat="server"  autocomplete="off" required="required"/> <br />
  <asp:Button ID="LoginButton" type="button" runat="server" Text="Login" OnClick="LoginButton_Click" />
     </div>
       <div id="LoggedIn_Div" class="text-center" runat="server">
           <div class="mb-1" runat="server">
           <asp:Button ID="HS_Maintenance_Button" CssClass="btn btn-warning text-white shadow-sm" runat="server" Text="High School Maintenance" OnClick="HS_Maintenance_Button_Click" />
           </div>
           <br />
           
           <div id="HS_Maintenance_div" class="text-center mb-3" runat="server">
            <div class="mb-3">
            <img src="https://img.icons8.com/fluency/48/000000/settings.png"/>
            
            </div>
               <div id="NoBlankName" class="alert alert-danger" role="alert" runat="server">
                   Please input a full name!
               </div>
             <div id="TooLong" class="alert alert-danger" role="alert" runat="server">
               Name must be between 3 to 15 Characters!
            </div>
               <div id="Duplicate" class="alert alert-danger" role="alert" runat="server">
               Already Exists!
            </div>
            <div id="Success" class="alert alert-success" role="alert" runat="server">
               Successfully Completed
            </div>
            <p id="prompt" runat="server"> No HighSchools Added </p>
               
               
            <asp:GridView ID="GridView_HighSchools" class="text-dark mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>

                              
                         <asp:Button ID="select_button" style="color: chocolate;" CssClass="btn btn-warning select_btn" runat="server" Text="select" OnClick="select_button_Click"/>
     
                             </ItemTemplate>
                 </asp:TemplateField>
                    <asp:TemplateField>
                     <ItemTemplate>
                            <asp:Button ID="Button4" style="color:#cecece;" CssClass="btn btn-secondary" runat="server" Text="edit" OnClick="Button4_Click" />
                            </div>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="HS Num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="HS Num" />
                <asp:BoundField DataField="HS Name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="High School Name" />
                <asp:BoundField DataField="Head Student Num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Head Student Num"/>
                </Columns>
            </asp:GridView>
            <asp:TextBox ID="TextBox_hidden" Visible="false" runat="server"></asp:TextBox>
               <asp:TextBox ID="Textbox" Visible="false" runat="server"></asp:TextBox>
            <div class="mb-3">
            <asp:DropDownList ID="DropDownList_students" Visible="true" CssClass="w-100" DataTextField="student" DataValueField="Student Num" runat="server" AutoPostBack="true" ></asp:DropDownList>
            </div>
            <div class="input-group mb-3">
                <img id="ii" src="https://img.icons8.com/external-inipagistudio-mixed-inipagistudio/64/000000/external-school-urban-infrastructure-inipagistudio-mixed-inipagistudio.png"></img>
             <asp:TextBox ID="HSname" placeholder="High School" runat="server" ></asp:TextBox>
                
            </div>
            <div class="mb-3 text-center">
            <asp:Button ID="Button5" CssClass="btn btn-primary" runat="server" Text="New" OnClick="Button5_Click" />    
            <asp:Button ID="Button6" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="Button6_Click" /> 
            <asp:Button ID="Button7" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="Button7_Click" />
        </div>
            </div>
           <div class="mb-1" runat="server">
           <asp:Button ID="ViewSchool_Button" CssClass="btn btn-warning text-white shadow-sm" runat="server" Text="View School" OnClick="ViewSchool_Button_Click"/>
           </div>
           <br/>
           <div id="View_School_div" style="padding: 10%;margin-bottom: 10%;" class="text-center" runat="server">
               
              
                 <asp:GridView ID="Gridview2" class="text-center text-dark mb-3" BorderStyle="None" AutoGenerateColumns="false" runat="server">
                <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                         <asp:Button ID="select_button" CssClass="btn btn-warning" runat="server" Text="Select" OnClick="select_button_Click1" />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="HS Num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="HS Num" />
                <asp:BoundField DataField="HS Name" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="High School Name" />
                <asp:BoundField DataField="Head Student Num" ItemStyle-CssClass="p-2" HeaderStyle-CssClass="p-2" HeaderText="Head Student Num"/>
                </Columns>
            </asp:GridView>
               <asp:TextBox ID="TextBox1_hidden" Visible="false" runat="server"></asp:TextBox>

               <div class="input-group mb-3">
                <span id="iii" style="top:22%;color:cadetblue;" >School |</span>
             <asp:TextBox ID="school" style=" padding: 10px 70px; padding-right: 10px;" placeholder="High School" runat="server" ></asp:TextBox>
                
            </div>
               <div class="input-group mb-3">
                <span id="iiii" style="top:22%; color:cadetblue;">Head Student |</span>
             <asp:TextBox ID="student" style=" padding-left: 120px;padding-right: 10px;" placeholder="Name" runat="server" ></asp:TextBox>
                
            </div>
           </div>
           <div class="mb-1" runat="server">
           <asp:Button ID="Logout_Button" CssClass="btn btn-danger text-white shadow-sm" runat="server" Text="Logout" OnClick="Logout_Button_Click" />
           </div>
   </div>

</form>

<div id="preloader">
	<div class="curtain"></div>
</div>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script>
        function ready(callbackFunc) {
            if (document.readyState !== 'loading') {
                // Document is already ready, call the callback directly
                callbackFunc();
            } else if (document.addEventListener) {
                // All modern browsers to register DOMContentLoaded
                document.addEventListener('DOMContentLoaded', callbackFunc);
            } else {
                // Old IE browsers
                document.attachEvent('onreadystatechange', function () {
                    if (document.readyState === 'complete') {
                        callbackFunc();
                    }
                });
            }
        }

        /** TEST CONTROLS **/
        ready(function () {
            var preloader = document.getElementById('preloader');
            var btns = document.getElementsByTagName('button');

            // Test
            setTimeout(function () {
                document.querySelector(
                    "body").style.visibility = "hidden"; document.querySelector(
                        "#preloader").style.visibility = "visible"; preloader.className = 'slide-in' }, -10000);
            setTimeout(function () {
                document.querySelector(
                    "#preloader").style.visibility = "none"; document.querySelector(
                        "body").style.visibility = "visible"; preloader.className = 'slide-out' }, 500);

            // Itterate through animation test buttons
            for (var i = 0; i < btns.length; i++) {
                var el = btns[i];
                el.onclick = function () {
                    var tempClass = this.id
                    // Remove.. well equals empty. No need for if/else
                    preloader.className = tempClass.replace(/remove/g, '');
                };
            }
        });
    </script>
</body>
</html>
