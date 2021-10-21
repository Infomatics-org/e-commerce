<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="StudentHelperForum.SingleProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/category.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>product Details</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

  <!--================Single Product Area =================-->
  <div class="product_image_area">
    <div class="container" runat="server">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="row justify-content-center">
            <div class="single_product_img" id="Return_Product_Imge" runat="server">
                             
            </div>
           
          </div>
        </div>
        <div class="col-lg-8">
          <div class="single_product_text text-center" >
           <h3 id="Return_Product_Name" runat="server"> </h3>
               
            <p id="Return_Product_Description" runat="server">
                
            </p>
              <form runat="server">
            <div class="card_area">
                <div class="product_count_area">
                    <p>Quantity</p>
                    <div class="product_count d-inline-block">
                        <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                        <input class="product_count_item input-number" type="text" value="1" min="0" max="10" id="quantity_input" runat="server">
                        <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                    </div>
                    <p id="Return_Product_Price" runat="server">  </p>
                </div>
              <div class="add_to_cart" id="Add_to_div" runat="server" Visible="false">
                  <asp:Button class="btn_3" ID="Button4" OnClick="Adding_Cart" runat="server" Text="Add to Cart" /> 
              </div>
            </div>
                  </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--================End Single Product Area =================-->
   <!-- subscribe part here -->
   <section class="subscribe_part section_padding">
      <div class="container">
          <div class="row justify-content-center">
              <div class="col-lg-8">
                  <div class="subscribe_part_content">
                      <h2>Get promotions & updates!</h2>
                      <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                      <div class="subscribe_form">
                          <input type="email" placeholder="Enter your mail">
                          <a href="#" class="btn_1">Subscribe</a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- subscribe part end -->
</asp:Content>
