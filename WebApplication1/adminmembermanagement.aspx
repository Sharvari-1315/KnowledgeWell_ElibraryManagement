<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

        <div class="container-fluid">
  <div class="row">
       <div class="col-md-5">
           <div class="card">
               <div class="card-body">

                    <div class="row">
                          <div class="col">
                          <center>
                              <h4> Member Details
                              </h4>
                          </center>
                          </div>
                    </div>

                   <div class="row">
                        <div class="col">
                        <center>
                               <img width="100px" src="imgs/generaluser.png" />
                        </center>
                        </div>
                   </div>

                    <div class="row">
                       <div class="col">
                       <hr />
                      </div>
                    </div>

<div class="row">
                    

   <div class="col-md-3">
       <label>Member ID</label>
       <div class="form-group">
       <div class="input-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Member ID" ></asp:TextBox>
            <asp:LinkButton class="btn btn-primary" ID="LinkButton4"  runat="server" OnClick="LinkButton4_Click">
    <i class="fas fa-check-circle">
</i></asp:LinkButton>
       </div>
       </div>
  </div>

                  
                      <div class="col-md-4">
                           <label>Full Name</label>
                           <div class="form-group">
                              <asp:TextBox ID="TextBox2" CssClass="form-control"  placeholder="Full Name"  runat="server" ReadOnly="true"></asp:TextBox>
                           </div>
                      </div>

   <div class="col-md-5">
     <label>Account Status</label>
     <div class="form-group">
       <div class="input-group">
      <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Status"  ReadOnly="true"></asp:TextBox>
           <asp:LinkButton class="btn btn-success m-1" ID="LinkButton1"  runat="server" OnClick="LinkButton1_Click">
               <i class="fas fa-check-circle">
           </i></asp:LinkButton>

           <asp:LinkButton class="btn btn-warning m-1" ID="LinkButton2"  runat="server" OnClick="LinkButton2_Click">
                <i class="fas fa-pause-circle">
            </i></asp:LinkButton>
           
           <asp:LinkButton class="btn btn-danger m-1" ID="LinkButton3"  runat="server" OnClick="LinkButton3_Click">
               <i class="fas fa-times-circle">
           </i></asp:LinkButton>
 </div>  
     </div>
  </div>

</div>

<br />


<div class="row">
        
   <div class="col-md-3">
        <label>DOB</label>
        <div class="form-group">
           <asp:TextBox ID="TextBox3" CssClass="form-control"  placeholder="DOB"  runat="server" ReadOnly="true" ></asp:TextBox>
        </div>
   </div>

                        <div class="col-md-4">
                           <label>Contact Number</label>
                           <div class="form-group">
                                <asp:TextBox ID="TextBox4" CssClass="form-control"  placeholder="Contact Number"  runat="server" ReadOnly="true"></asp:TextBox>
                           </div>
                        </div>

    <div class="col-md-5">
   <label>Email ID</label>
   <div class="form-group">
        <asp:TextBox ID="TextBox8" CssClass="form-control"  placeholder="Email ID"  runat="server" ReadOnly="true"></asp:TextBox>
   </div>
</div>
</div>

                   <br />
                  
                   <div class="row">
        
   <div class="col-md-4">
        <label>State</label>
        <div class="form-group">
           <asp:TextBox ID="TextBox5" CssClass="form-control"  placeholder="State"  runat="server" ReadOnly="true" ></asp:TextBox>
        </div>
   </div>

                        <div class="col-md-4">
                           <label>City</label>
                           <div class="form-group">
                                <asp:TextBox ID="TextBox6" CssClass="form-control"  placeholder="City"  runat="server" ReadOnly="true"></asp:TextBox>
                           </div>
                        </div>

    <div class="col-md-4">
   <label>Pin Code</label>
   <div class="form-group">
        <asp:TextBox ID="TextBox9" CssClass="form-control"  placeholder="Pin Code"  runat="server" ReadOnly="true"></asp:TextBox>
        
   </div>
</div>
</div>

                   <br />

                   <div class="row">
     
<div class="col-md-12">
     <label>Full Postal Address</label>
     <div class="form-group">
        <asp:TextBox ID="TextBox10" CssClass="form-control" TextMode="MultiLine" Rows="2" placeholder="Full Address"  runat="server" ReadOnly="true" ></asp:TextBox>
     </div>
</div>
                                       </div>
                   <br />
                   <div class="row">
                       <div class="col-8 mx-auto">
                           <asp:Button ID="Button2" class="btn btn-md btn-danger w-100" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                       </div>
                   </div>
                           

                         
                       </div>
                   </div>
             


     <a href="WebForm2.aspx"> << Back to Home </a> <br /> <br />
  </div>

      <div class="col-md-7">
      <div class="card">
               <div class="card-body">

                  <div class="row">
                      <div class="col">
                         <center>
                         <h4>Member List</h4>
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
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString3 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                           <asp:GridView  class="table table-striped table-bordered"    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                               <Columns>
                                   <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                   <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name" />
                                   <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                   <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                   <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                   
                                   <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                               </Columns>
                           </asp:GridView>
                       </div>
                   </div>
   
                   </div>
      </div>
      </div>
  </div>
          </div>
</asp:Content>
