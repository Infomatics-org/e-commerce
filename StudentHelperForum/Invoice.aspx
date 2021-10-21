<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="StudentHelperForum.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="color:lavenderblush">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar" >
            <div  class="list-group border-0 card bg-faded text-center text-md-left" style="width: 280px;height:900px;">
                <a style="margin-top:30px;" href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-heart"></i> <span class="hidden-sm-down">Continue Shopping</span></a>
                <a style="margin-top:30px;" href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-list"></i> <span class="hidden-sm-down">View Cart</span></a>
                <a style="margin-top:30px;" href="RegisterProduct.aspx" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-th"></i> <span class="hidden-sm-down">Sell New Product/Service</span></a>
                <a style="margin-top:30px;" href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-calendar"></i> <span class="hidden-sm-down">History</span></a>
                <a href="#" style="margin-top:520px;" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-envelope"></i> <span class="hidden-sm-down">Logout</span></a>
        
            </div>
        </div>



        <main class="col-md-10 float-left col px-5 px-md-3 py-3 main">
            <a href="#" data-target="#sidebar" data-toggle="collapse"><i class="fa fa-navicon fa-lg py-2 p-1"></i></a>

            <a id="more"></a>
            <hr>
            <div style="width:1000px;margin-left:20%;margin-top:5%;">

                              <form class="row contact_form" action="#" method="post" novalidate="novalidate">

                               <div class="container bootdey">
<div class="row invoice row-printable">
    <div class="col-md-10">
        <!-- col-lg-12 start here -->
        <div class="panel panel-default plain" id="dash_0">
            <!-- Start .panel -->
            <div class="panel-body p30">
                <div class="row">
                    <!-- Start .row -->
                    <div class="col-lg-6">
                        <!-- col-lg-6 start here -->
                        <div class="invoice-logo"><img width="100" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Invoice logo"></div>
                    </div>
                    <!-- col-lg-6 end here -->
                    <div class="col-lg-6">
                        <!-- col-lg-6 start here -->
                        <div class="invoice-from">
                            <ul class="list-unstyled text-right">
                                <li>Dash LLC</li>
                                <li>2500 Ridgepoint Dr, Suite 105-C</li>
                                <li>Austin TX 78754</li>
                                <li>VAT Number EU826113958</li>
                            </ul>
                        </div>
                    </div>
                    <!-- col-lg-6 end here -->
                    <div class="col-lg-12">
                        <!-- col-lg-12 start here -->
                        <div class="invoice-details mt25">
                            <div class="well">
                                <ul class="list-unstyled mb0">
                                    <li><strong>Invoice</strong> #936988</li>
                                    <li><strong>Invoice Date:</strong> Monday, October 10th, 2015</li>
                                    <li><strong>Due Date:</strong> Thursday, December 1th, 2015</li>
                                    <li><strong>Status:</strong> <span class="label label-danger">UNPAID</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="invoice-to mt25">
                            <ul class="list-unstyled">
                                <li><strong>Invoiced To</strong></li>
                                <li>Jakob Smith</li>
                                <li>Roupark 37</li>
                                <li>New York, NY, 2014</li>
                                <li>USA</li>
                            </ul>
                        </div>
                        <div class="invoice-items">
                            <div class="table-responsive" style="overflow: hidden; outline: none;" tabindex="0">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="per70 text-center">Description</th>
                                            <th class="per5 text-center">Qty</th>
                                            <th class="per25 text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1024MB Cloud 2.0 Server - elisium.dynamic.com (12/04/2014 - 01/03/2015)</td>
                                            <td class="text-center">1</td>
                                            <td class="text-center">$25.00 USD</td>
                                        </tr>
                                        <tr>
                                            <td>Logo design</td>
                                            <td class="text-center">1</td>
                                            <td class="text-center">$200.00 USD</td>
                                        </tr>
                                        <tr>
                                            <td>Backup - 1024MB Cloud 2.0 Server - elisium.dynamic.com</td>
                                            <td class="text-center">12</td>
                                            <td class="text-center">$12.00 USD</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="2" class="text-right">Sub Total:</th>
                                            <th class="text-center">$237.00 USD</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2" class="text-right">20% VAT:</th>
                                            <th class="text-center">$47.40 USD</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2" class="text-right">Credit:</th>
                                            <th class="text-center">$00.00 USD</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2" class="text-right">Total:</th>
                                            <th class="text-center">$284.4.40 USD</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="invoice-footer mt25">
                            <p class="text-center">Generated on Monday, October 08th, 2015 <a href="#" class="btn btn-default ml15"><i class="fa fa-print mr5"></i> Print</a></p>
                        </div>
                    </div>
                    <!-- col-lg-12 end here -->
                </div>
                <!-- End .row -->
            </div>
        </div>
        <!-- End .panel -->
    </div>
    <!-- col-lg-12 end here -->
</div>
</div>
                
                            </form>

        </div>
            <a id="flexbox"></a>
        </main>
    </div>
</div>
</asp:Content>
