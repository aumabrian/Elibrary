<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="Elibrary.viewbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('imgs/lib5.png'); background-size: cover; height: 800px">

        <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        Book Inventory List
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDbConnectionString2 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="book_id" HeaderText="Id" ReadOnly="True" SortExpression="book_id">

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
                                                                            Publisher -
                                                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("publisher_name") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                            &nbsp;| Publish Date
                                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("publisher_date") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                            &nbsp;| Pages
                                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("no_of_pages") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                            &nbsp;| Edition
                                                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("edition") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-lg-12">
                                                                            Cost -
                                                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                            &nbsp;| Actual Stock -
                                                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                            &nbsp;| Available -
                                                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="True"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-lg-12">
                                                                            Description -
                                                                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("book_description") %>' Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:Label>
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
                <centre>
                    <a href="homepage.aspx"><< Back To Home</a><span class="clearfix"></span>
                    <br />
                </centre>

            </div>
        </div>

    </div>

</asp:Content>
