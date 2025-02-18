﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="WebApplication1.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
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
                              <h4> Book Details
                              </h4>
                          </center>
                          </div>
                    </div>

                   <div class="row">
                        <div class="col">
                        <center>
                               <img id="imgview"  width="100px" src="book_inventory/books1.png" />
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
                           <asp:FileUpload  onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                       </div>
                   </div>

<div class="row">
                    

   <div class="col-md-3">
       <label>Book ID</label>
       <div class="form-group">
       <div class="input-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Book ID" ></asp:TextBox>
           <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
       </div>
       </div>
  </div>

                  
                      <div class="col-md-9">
                           <label>Book Name</label>
                           <div class="form-group">
                              <asp:TextBox ID="TextBox2" CssClass="form-control"  placeholder="Full Name"  runat="server" ></asp:TextBox>
                           </div>
                      </div>

  

</div>

<br />


<div class="row">
        
   <div class="col-md-4">
        <label>Language</label>
        <div class="form-group">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem Text="English" Value="English" />
                <asp:ListItem Text="Hindi" Value="Hindi" />
                <asp:ListItem Text="Marathi" Value="Marathi" />
                <asp:ListItem Text="French" Value="French" />
                <asp:ListItem Text="German" Value="German" />
                <asp:ListItem Text="Urdu" Value="Urdu" />
            </asp:DropDownList>
        </div>

       <label>Publisher Name</label>
       <div class="form-group">
          <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
             
         </asp:DropDownList>
       </div>
  </div>

   <div class="col-md-4">
      <label>Author Name</label>
      <div class="form-group">
          <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
           
          </asp:DropDownList>
      </div>

     <label>Publish Date</label>
     <div class="form-group">
        <asp:TextBox ID="TextBox1" CssClass="form-control"  placeholder="Date"   runat="server"></asp:TextBox>
     </div>
</div>

    <div class="col-md-4">
   <label>Genre</label>
   <div class="form-group">
       <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple">
          <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
          <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
          <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
          <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
          <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
          <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
          <asp:ListItem Text="Wellness" Value="Wellness"></asp:ListItem>
          <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
          <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
          <asp:ListItem Text="Fantasy" Value="Fatansy"></asp:ListItem>
          <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
           <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
           <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
           <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
           <asp:ListItem Text="Science Fiction" Value="Science Fiction"></asp:ListItem>
           <asp:ListItem Text="Suspense" Value="Suspense"></asp:ListItem>
           <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
           <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
           <asp:ListItem Text="Autobiography" Value="Autobiography"></asp:ListItem>
           <asp:ListItem Text="Encyclopedia" Value="Encyclopedia"></asp:ListItem>
           <asp:ListItem Text="Health" Value="Health"></asp:ListItem>
           <asp:ListItem Text="History" Value="History"></asp:ListItem>
           <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
           <asp:ListItem Text="TextBook" Value="TextBook"></asp:ListItem>
           <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
           <asp:ListItem Text="Travel" Value="Travel"></asp:ListItem>
       </asp:ListBox>
   </div>
</div>
</div>

                   <br />
                  
<div class="row">
        
   <div class="col-md-4">
        <label>Edition</label>
        <div class="form-group">
           <asp:TextBox ID="TextBox5" CssClass="form-control"  placeholder="Edition"  runat="server" ></asp:TextBox>
        </div>
   </div>

                        <div class="col-md-4">
                           <label>Book Cost(per unit)</label>
                           <div class="form-group">
                                <asp:TextBox ID="TextBox6" CssClass="form-control"  placeholder="Book Cost"  runat="server" TextMode="Number"></asp:TextBox>
                           </div>
                        </div>

    <div class="col-md-4">
   <label>Pages</label>
   <div class="form-group">
        <asp:TextBox ID="TextBox9" CssClass="form-control"  placeholder="Pages"  runat="server" TextMode="Number"></asp:TextBox>
        
   </div>
</div>
</div>

                   <br />


                   <div class="row">
        
   <div class="col-md-4">
        <label>Actual Stock</label>
        <div class="form-group">
           <asp:TextBox ID="TextBox3" CssClass="form-control"  placeholder="Actual Stock"  runat="server" TextMode="Number" ></asp:TextBox>
        </div>
   </div>

                        <div class="col-md-4">
                           <label>Current Stock</label>
                           <div class="form-group">
                                <asp:TextBox ID="TextBox4" CssClass="form-control"  placeholder="Current Stock"  runat="server" TextMode="Number" ReadOnly="true"></asp:TextBox>
                           </div>
                        </div>

    <div class="col-md-4">
   <label>Issued Books</label>
   <div class="form-group">
        <asp:TextBox ID="TextBox8" CssClass="form-control"  placeholder="Issued Books"  runat="server" TextMode="Number" ReadOnly="true"></asp:TextBox>
        
   </div>
</div>
</div>
                   <br />
                   <div class="row">
     
<div class="col-md-12">
     <label>Book Description</label>
     <div class="form-group">
        <asp:TextBox ID="TextBox10" CssClass="form-control" TextMode="MultiLine" Rows="2" placeholder="Book Description"  runat="server" ></asp:TextBox>
     </div>
</div>
                                       </div>
                   <br />
                   <div class="row">
                        <div class="col-4">
                            <asp:Button ID="Button1" class="btn btn-md btn-success w-100" runat="server" Text="Add" OnClick="Button1_Click" />
                       </div>
                       <div class="col-4">
                            <asp:Button ID="Button2" class="btn btn-md btn-warning w-100" runat="server" Text="Update" OnClick="Button2_Click" />
                       </div>
                       <div class="col-4">
                           <asp:Button ID="Button3" class="btn btn-md btn-danger w-100" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                         <h4>Book Inventory List</h4>
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
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString3 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                           <asp:GridView  class="table table-striped table-bordered"    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="true"  SortExpression="book_id" >
                                    <ItemStyle Font-Bold="True" />
                                    </asp:BoundField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-lg-10">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">

                                                                Author-<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                &nbsp;| Genre-<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                &nbsp;| Language-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">

                                                                Publisher-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                &nbsp;| Publish Date-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                &nbsp;| Pages-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                &nbsp;| Edition-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                            </div>
                                                        </div>
                                                       <div class="row">
                                                           <div class="col-12">

                                                               Cost-<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                               &nbsp;| Actual Stock-<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                               &nbsp;| Available-<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                           </div>
                                                       </div>

                                                        <div class="row">
                                                            <div class="col-12">

                                                                Description-<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_desciption") %>'></asp:Label>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
