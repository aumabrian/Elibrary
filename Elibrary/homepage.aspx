<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Elibrary.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section>
          <div style="background-image: url('imgs/lib5.png'); background-size:cover; height:800px">
              <div class="container">
              <div class="row">
                  <div class="col-md-6">
                      <h2>Eres Library</h2>
                      <p class="text-justify">
                          Pharetra sit duis fames feugiat etiam eget pulvinar, pharetra. Velit morbi. Primis. Faucibus primis duis facilisi platea hac, dui vitae.
                      </p>
                      <p class="text-justify">
                          Montes potenti cras consectetuer parturient. Quis libero habitasse nisi vulputate Nascetur. Nisl conubia, nisl fusce class consectetuer. Cras justo. Aptent sed posuere sollicitudin nullam inceptos fermentum neque ornare mattis tincidunt.
                      </p>
                      <br />
                      <br />
                      <br />
                      <p class="text-justify">
                          Senectus accumsan sociosqu sed mauris platea semper cum consequat tristique. Enim per hac vitae etiam, sollicitudin natoque fusce fames iaculis, fames vivamus cubilia vivamus. Sociosqu sociis commodo morbi ut etiam varius leo mattis cras, varius suscipit ad euismod dapibus praesent.
                      </p>
                  </div>
              </div>
          </div>
          </div>
        <%--<img src="imgs/lib5.png" width="100%" class="img-fluid" />--%>
          
    </section>

    <div>
        <section style="background-color:cadetblue">

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Our Primary features</h2>
                            <p><b>Our 3 Primary features</b></p>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                            <img width="115px" src="imgs/digital-inventory.png" />
                            <h4>Digital book inventory</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img width="150px" src="imgs/digital.jpg" />
                            <%--<img width="150px" src="imgs/search-book.jpeg" />--%>
                            <h4>Search Online</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img width="115px" src="imgs/default1.png" />                          
                            <h4>Defaulters</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                </div>
            </div>

        </section>

        <section style="background-color:cadetblue">

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Our Process</h2>
                            <p><b>We have a simple 3 step process</b></p>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                            <img width="115px" src="imgs/sign-up.png" />
                            <h4>Sign Up</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img width="150px" src="imgs/search-book.jpeg" />
                            <h4>Search Online</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img width="200px" src="imgs/library1.png" />
                            <%--<img width="200px" src="imgs/library.jpg" />--%>
                            <h4>Visit Us</h4>
                            <p class="text-justify">Etiam consequat aliquam dui ultrices senectus sapien parturient. Vulputate cras inceptos eleifend habitant viverra. Est vel class etiam ut tellus.</p>
                        </center>
                    </div>
                </div>
            </div>

        </section>
    </div>


    <%--<section>
        <img src="imgs/down-banner.jpg" class="img-fluid" />
    </section>--%>
</asp:Content>
