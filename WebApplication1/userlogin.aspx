<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    
    <div class="container">
        <div class="row">
             <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150px" src="imgs/generaluser.png" />
                                 </center>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               <center>
                               <h3>Member Login</h3>
                               </center>
                            </div>
                       </div>

                          <div class="row">
                             <div class="col">
                             <hr />
                            </div>
                          </div>

                         <div class="row">
                             <div class="col">
                                 <label>Member ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Member ID" ></asp:TextBox>
                                 </div>

                                 <br />

                                 <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" TextMode="Password"  runat="server" ></asp:TextBox>
                                 </div>

                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-md w-100" ID="Button1" runat="server" style="margin-top:10px;" Text="Login" OnClick="Button1_Click" />

                                 </div>

                                 

                                 <div class="form-group">
                                    <a href="usersignup.aspx"> <input class="btn btn-info  btn-md w-100" id="Button2" type="button" style="color:white; margin-top:10px;" value="Sign Up" /></a>

                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>


                 <a href="WebForm2.aspx"> << Back to Home </a> <br /> <br />
             </div>
        </div>
    </div>

</asp:Content>
