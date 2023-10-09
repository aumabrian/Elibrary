<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="Elibrary.adminbookinventory" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('imgs/lib5.png'); background-size: cover; height: 800px">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5>Book Details</h5>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img id="imgview" width="100px" src="book_inventory/books1.jfif" />
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
                                    <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Book ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <label>Book Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Language</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                            <asp:ListItem Text="Kiswahili" Value="Kiswahili"></asp:ListItem>
                                            <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                            <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <label>Publisher Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                            <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Author Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="MO" Value="MO"></asp:ListItem>
                                            <asp:ListItem Text="BB" Value="BB"></asp:ListItem>
                                            <asp:ListItem Text="CC" Value="CC"></asp:ListItem>
                                            <asp:ListItem Text="KW" Value="KW"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <label>Publish Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Genre</label>
                                    <div class="form-group">
                                        <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                            <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                            <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
                                            <asp:ListItem Text="Adeventure" Value="Adeventure"></asp:ListItem>
                                            <asp:ListItem Text="Comedy" Value="Comedy"></asp:ListItem>
                                            <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                            <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                            <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                            <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                            <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                            <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
                                            <asp:ListItem Text="History" Value="History"></asp:ListItem>
                                            <asp:ListItem Text="Comic" Value="Comic"></asp:ListItem>
                                            <asp:ListItem Text="Self Development" Value="Self Development"></asp:ListItem>
                                            <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                            <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
                                            <asp:ListItem Text="Science Fiction" Value="Science Fiction"></asp:ListItem>
                                            <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                            <asp:ListItem Text="Fiction" Value="Fiction"></asp:ListItem>
                                        </asp:ListBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Edition</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Edition"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Cost(Per Unit)</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Cost(Per Unit)" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pages</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Actual Stock</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Current Stock</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Issued Books</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Book Description</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Button class="btn btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click1" />
                                </div>
                                <div class="col-md-4">
                                    <asp:Button class="btn btn-block btn-primary" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                                <div class="col-md-4">
                                    <asp:Button class="btn btn-block btn-danger" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                                </div>
                            </div>

                        </div>
                    </div>

                    <a href="homepage.aspx"><< Back to Home</a>
                    <hr />

                </div>

                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Book Inventory List</h3>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="inventories"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDbConnectionString2 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="Id" ReadOnly="True" SortExpression="book_id" >

                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-10">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        Author -
                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("author_name") %>' Font-Bold="True" Font-Italic="True"></asp:Label>

                                                                        &nbsp;| Genre
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("genre") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>

                                                                        &nbsp;| Language 
                                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("language") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        Publisher - <asp:Label ID="Label7" runat="server" Text='<%# Eval("publisher_name") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        &nbsp;| Publish Date <asp:Label ID="Label8" runat="server" Text='<%# Eval("publisher_date") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        &nbsp;| Pages <asp:Label ID="Label9" runat="server" Text='<%# Eval("no_of_pages") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        &nbsp;| Edition <asp:Label ID="Label10" runat="server" Text='<%# Eval("edition") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        Cost - <asp:Label ID="Label11" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        &nbsp;| Actual Stock - <asp:Label ID="Label12" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        &nbsp;| Available - <asp:Label ID="Label13" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="True"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        Description - <asp:Label ID="Label14" runat="server" Text='<%# Eval("book_description") %>' Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:Label>
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
    </div>

</asp:Content>
