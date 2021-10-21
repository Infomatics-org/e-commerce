<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="StudentHelperForum.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <!--================Register to sell a Product Area =================-->
    <section class="login_part section_padding" style="background-color:lavenderblush">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>New to our Shop?</h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3 style="color:whitesmoke";>Sell a Product/Service <br>
                                Add Product details</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                          <div class="col-md-12 form-group p_star" >
                              <select class="form-control"  id="sell">
                                <option>Product</option>
                                <option>Service</option>
                              </select>
                            </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="ProductName" name="ProductName" value=""
                                        placeholder="Service/Product Name">
                                </div>
                            <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="Price" name="Price" value=""
                                        placeholder="Price">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="description" name="description" value=""
                                        placeholder="Provide a short description">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                  <select class="form-control" id="sel1">
                                    <option>Laundry</option>
                                    <option>Cooking</option>
                                    <option>Cleaning</option>
                                    <option>Clothing Products</option>
                                    <option>Electronic</option>
                                    <option>Fast Food</option>
                                    <option>Stationary</option>
                                    <option>Academic service</option>
                                    <option>Beauty Products</option>
                                    <option>TextBook</option>
                                    <option>Shoes</option>
                                    <option>Other Products</option>
                                    <option>Other Services</option>
                                  </select>
                                </div>
                                
                                <div class="col-md-12 form-group">
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/radialIndicator/1.4.0/radialIndicator.js"></script>
                                <div id="indicatorContainerWrap">
                                    <div class="rad-prg" id="indicatorContainer"></div>
                                    <div class="rad-cntnt">Select an image.</div> <input type="file" id="prgFileSelector" />
                                </div>
                                    <button type="submit" value="submit" class="btn_3">
                                        ADD
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Register to sell a Product end =================-->
</asp:Content>
