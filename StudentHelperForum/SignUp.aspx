<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StudentHelperForum.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <!--================login_part Area =================-->
    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
         <div class="col">
   
         </div>
                <div class="col-5 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3 style="color:whitesmoke";>Welcome ! <br>
                                Please Sign up now</h3>
                                  <form class="row contact_form" runat="server" novalidate="novalidate">



                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="StudentNumber" name="StudentNumber" value=""
                                        placeholder="Student Number">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="StudentAddress" name="StudentAddress" value=""
                                        placeholder="Student Address">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="StudentEmail" name="StudentEmail" value=""
                                        placeholder="UJ Student Email">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="CellphoneNumber" name="CellphoneNumber" value=""
                                        placeholder="Cellphone Number">
                                </div>






                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="firstname" name="firstname" value=""
                                        placeholder="First Name">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="lastname" name="lastname" value=""
                                        placeholder="Last Name">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" runat="server" id="email" name="email" value=""
                                        placeholder="Personal E-mail">
                                </div>
                               
                                 <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" runat="server" id="password" name="password" value=""
                                        placeholder="Password">
                                </div>
                                <div class="col-md-12 form-group">
                      
                                 <asp:Button ID="Btn1" OnClick="sign_up" runat="server" class="btn_3" Text="Sign Up"/>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

                      <div class="col">
                      </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->
</asp:Content>
