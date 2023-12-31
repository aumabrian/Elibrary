﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="Elibrary.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
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
                                        <h3>Book Issuing</h3>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="imgs/books.jpg" />
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
                                    <label>Member Id</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Id"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Mamber Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Start Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Due Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <asp:Button class="btn btn-block btn-primary" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                                </div>
                                <div class="col-6">
                                    <asp:Button class="btn btn-block btn-success" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
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
                                        <h3>Issued Books</h3>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="issued"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDbConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="Member Id" SortExpression="member_id" />
                                            <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                            <asp:BoundField DataField="book_id" HeaderText="Book Id " SortExpression="book_id" />
                                            <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                            <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                            <asp:BoundField DataField="due_date" HeaderText="Return Date" SortExpression="due_date" />
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
