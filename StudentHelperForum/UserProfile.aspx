<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="StudentHelperForum.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar" >
            <div  class="list-group border-0 card bg-faded text-center text-md-left" style="width: 280px;height:900px;">
                <a style="margin-top:30px;" href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-heart"></i> <span class="hidden-sm-down">Continue Shopping</span></a>
                <a style="margin-top:30px;" href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-list"></i> <span class="hidden-sm-down">View Cart</span></a>
                <a style="margin-top:30px;" href="Sell.aspx" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-th"></i> <span class="hidden-sm-down">Sell New Product/Service</span></a>
                <a style="margin-top:30px;" href="Invoice.aspx" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-calendar"></i> <span class="hidden-sm-down">History</span></a>
                <a href="#" style="margin-top:520px;" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-envelope"></i> <span class="hidden-sm-down">Logout</span></a>
        
            </div>
        </div>



        <main class="col-md-10 float-left col px-5 px-md-3 py-3 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-lg py-2 p-1"></i></a>

                          <div  style="width:300px;margin-left:35%;margin-bottom:2%;">
                             <ul class="list-group">
                              <li class="list-group-item active" aria-current="true">Current User Details</li>
                              <li class="list-group-item">FirstName : Sipho</li>
                              <li class="list-group-item">LastName : Mabu</li>
                              <li class="list-group-item">Personal Email : myv@gmail.com</li>
                              <li class="list-group-item">Cellphone : 07 8397421</li>
                                 <li class="list-group-item">Address : oppirief,apk</li>
                                 <li class="list-group-item">Password : dgdfg767dfg88</li>
                            </ul>        

                          </div>

            <a id="more"></a>
            <hr>
            <div style="width:300px;margin-left:35%;margin-top:5%;">

                              <form class="row contact_form" action="#" method="post" novalidate="novalidate">

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="StudentAddress" name="StudentAddress" value=""
                                        placeholder="Student Address">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="CellphoneNumber" name="CellphoneNumber" value=""
                                        placeholder="Cellphone Number">
                                </div>


                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="firstname" name="firstname" value=""
                                        placeholder="First Name">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" id="lastname" name="lastname" value=""
                                        placeholder="Last Name">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="email" name="email" value=""
                                        placeholder="Personal E-mail">
                                </div>
                               
                                 <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" id="password" name="password" value=""
                                        placeholder="Password">
                                </div>
                                <div class="col-md-12 form-group">
                                    <button type="submit" value="submit" class="btn_3">
                                        Update Details
                                    </button>
                             
                                </div>
                            </form>

        </div>
            <a id="flexbox"></a>
           


        </main>
    </div>
</div>


</asp:Content>
