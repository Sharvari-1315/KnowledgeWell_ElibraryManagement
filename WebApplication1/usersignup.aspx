<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

    <div class="container">
    <div class="row">
         <div class="col-md-8 mx-auto">
             <div class="card">
                 <div class="card-body">

                     <div class="row">
                         <div class="col">
                             <center>
                                 <img width="100px" src="imgs/generaluser.png" />
                             </center>
                         </div>
                    </div>

                    <div class="row">
                        <div class="col">
                           <center>
                           <h4>Member Sign Up</h4>
                           </center>
                        </div>
                   </div>

                      <div class="row">
                         <div class="col">
                         <hr />
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-md-6">
                            <label>Full Name</label>
                            <div class="form-group">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name" ></asp:TextBox>
                            </div>
                        </div>
                      

                    
                        <div class="col-md-6">
                             <label>Date of Birth</label>
                             <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control"  TextMode="Date"  runat="server" ></asp:TextBox>
                             </div>
                        </div>
                     </div>

                     <div class="row">
                           <div class="col-md-6">
                           <label>Contact Number</label>
                           <div class="form-group">
                                  <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                           </div>
                           </div>
                     

                    
                            <div class="col-md-6">
                              <label>Email Id</label>
                              <div class="form-group">
                                       <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Enter your Email ID" TextMode="Email"></asp:TextBox>
                              </div>
                           </div>
                     </div>

                     
                     <div class="row">
                           <div class="col-md-4">
                           <label>State</label>
                           <div class="form-group">
                               <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <asp:ListItem Text="Andra Pradesh" Value="Andhra Pradesh" />
                                   <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                   <asp:ListItem Text="Assam" Value="Assam" />
                                   <asp:ListItem Text="Bihar" Value="Bihar" />
                                   <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                   <asp:ListItem Text="Goa" Value="Goa" />
                                   <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                   <asp:ListItem Text="Haryana" Value="Haryana" />
                                   <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                   <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                   <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                   <asp:ListItem Text="Kerala" Value="Kerala" />
                                   <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                   <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                   <asp:ListItem Text="Manipur" Value="Manipur" />
                                   <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                   <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                   <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                   <asp:ListItem Text="Odisha" Value="Odisha" />
                                   <asp:ListItem Text="Punjab" Value="Punjab" />
                                   <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                   <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                   <asp:ListItem Text="Tamilnadu" Value="Tamilnadu" />
                                   <asp:ListItem Text="Telangana" Value="Telangana" />
                                   <asp:ListItem Text="Tripura" Value="Tripura" />
                                   <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                   <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                   <asp:ListItem Text="West Bengal" Value="West Bengal" />
                               </asp:DropDownList>
                           </div>
                           </div>
                     

                    
                        <div class="col-md-4">
                        <label>City</label>
                             <div class="form-group">
                                 <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="City" ></asp:TextBox>
                             </div>
                        </div>
                    

                      
                         <div class="col-md-4">
                             <label>Pin Code</label>
                             <div class="form-group">
                                  <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                             </div>
                         </div>
                     </div>


                      <div class="row">
                          <div class="col">
                          <label>Full Address</label>
                             <div class="form-group">
                                   <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="Multiline" Rows="2"></asp:TextBox>
                             </div>
                          </div>
                      </div>

                
                     
                      <div class="row">
                          <div class="col">
                              <center>
                              <span class="badge bg-info">Login Credentials</span>
                              </center>
                          </div>
                      </div>


                     <div class="row">
      <div class="col-md-6">
      <label>User ID</label>
      <div class="form-group">
             <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="User ID"></asp:TextBox>
      </div>
      </div>


                    
       <div class="col-md-6">
         <label>Password</label>
         <div class="form-group">
                  <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Enter password" TextMode="Password"></asp:TextBox>
         </div>
      </div>
</div>


                             <div class="form-group">
                                 <asp:Button class="btn btn-success btn-md w-100" ID="Button1" runat="server" style="margin-top:10px;" Text="Sign Up" OnClick="Button1_Click" />

                             </div>

                             

                           
                         </div>
                     </div>
               


       <a href="WebForm2.aspx"> << Back to Home </a> <br /> <br />
    </div>
   </div>
        </div>

</asp:Content>
