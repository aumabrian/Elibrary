<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Elibrary.userprofile" %>

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
                <div class="col-md-4">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100px" src="imgs/general_user.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Your Profile</h3>
                                        <span>Account Status - </span>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Status"></asp:Label>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Contact No</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Email</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>County</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Mombasa" Value="Mombasa"></asp:ListItem>
                                            <asp:ListItem Text="kwale" Value="Kwale"></asp:ListItem>
                                            <asp:ListItem Text="Kilifi" Value="Kilifi"></asp:ListItem>
                                            <asp:ListItem Text="Tana River" Value="Tana River"></asp:ListItem>
                                            <asp:ListItem Text="Lamu" Value="Lamu"></asp:ListItem>
                                            <asp:ListItem Text="Taita Tavata" Value="Taita Tavata"></asp:ListItem>
                                            <asp:ListItem Text="Garisa" Value="Garisa"></asp:ListItem>
                                            <asp:ListItem Text="Wajir" Value="Wajir"></asp:ListItem>
                                            <asp:ListItem Text="Mandera" Value="Mandera"></asp:ListItem>
                                            <asp:ListItem Text="Marsabit" Value="Marsabit"></asp:ListItem>
                                            <asp:ListItem Text="Isiolo" Value="Isiolo"></asp:ListItem>
                                            <asp:ListItem Text="Meru" Value="Meru"></asp:ListItem>
                                            <asp:ListItem Text="Tharaka-Nithi" Value="Tharaka-Nithi"></asp:ListItem>
                                            <asp:ListItem Text="Embu" Value="Embu"></asp:ListItem>
                                            <asp:ListItem Text="Kitui" Value="Kitui"></asp:ListItem>
                                            <asp:ListItem Text="Machakos" Value="Machakos"></asp:ListItem>
                                            <asp:ListItem Text="Makueni" Value="Makueni"></asp:ListItem>
                                            <asp:ListItem Text="Nyandarua" Value="Nyandarua"></asp:ListItem>
                                            <asp:ListItem Text="Nyeri" Value="Nyeri"></asp:ListItem>
                                            <asp:ListItem Text="Kirinyaga" Value="Kirinyaga"></asp:ListItem>
                                            <asp:ListItem Text="Muranga" Value="Muranga"></asp:ListItem>
                                            <asp:ListItem Text="Kiambu" Value="Kiambu"></asp:ListItem>
                                            <asp:ListItem Text="Turkana" Value="Turkana"></asp:ListItem>
                                            <asp:ListItem Text="West Pokot" Value="West Pokot"></asp:ListItem>
                                            <asp:ListItem Text="Samburu" Value="Samburu"></asp:ListItem>
                                            <asp:ListItem Text="Trans-Nzoia" Value="Trans-Nzoia"></asp:ListItem>
                                            <asp:ListItem Text="Uasin-Gishu" Value="Uasin-Gishu"></asp:ListItem>
                                            <asp:ListItem Text="Elgeyo Marakwet" Value="Elgeyo Marakwet"></asp:ListItem>
                                            <asp:ListItem Text="Nandi" Value="Nandi"></asp:ListItem>
                                            <asp:ListItem Text="Baringo" Value="Baringo"></asp:ListItem>
                                            <asp:ListItem Text="Laikipia" Value="Laikipia"></asp:ListItem>
                                            <asp:ListItem Text="Nakuru" Value="Nakuru"></asp:ListItem>
                                            <asp:ListItem Text="Narok" Value="Narok"></asp:ListItem>
                                            <asp:ListItem Text="Kajiado" Value="Kajiado"></asp:ListItem>
                                            <asp:ListItem Text="Kericho" Value="Kericho"></asp:ListItem>
                                            <asp:ListItem Text="Bomet" Value="Bomet"></asp:ListItem>
                                            <asp:ListItem Text="Kakamega" Value="Kakamega"></asp:ListItem>
                                            <asp:ListItem Text="Vihiga" Value="Vihiga"></asp:ListItem>
                                            <asp:ListItem Text="Bungoma" Value="Bungoma"></asp:ListItem>
                                            <asp:ListItem Text="Busia" Value="Busia"></asp:ListItem>
                                            <asp:ListItem Text="Siaya" Value="Siaya"></asp:ListItem>
                                            <asp:ListItem Text="Kisumu" Value="Kisumu"></asp:ListItem>
                                            <asp:ListItem Text="Homa Bay" Value="Homa Bay"></asp:ListItem>
                                            <asp:ListItem Text="Migori" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Kisii" Value="Kisii"></asp:ListItem>
                                            <asp:ListItem Text="Nyamira" Value="Nyamira"></asp:ListItem>
                                            <asp:ListItem Text="Nairobi" Value="Nairobi"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Code</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Code" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Full Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <span class="badge badge-pill badge-info">Login Credentials</span>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Username</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Old Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <center>
                                        <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                        </div>
                                    </center>
                                </div>
                            </div>

                        </div>
                    </div>

                    <a href="homepage.aspx"><< Back to Home</a>
                    <hr />

                </div>

                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100px" src="imgs/books1.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Issued Books</h3>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="books info"></asp:Label>
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
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
