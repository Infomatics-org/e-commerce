using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class Cart : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            dynamic PCLs = client.getProductCartList();
            dynamic SCLs = client.getServiceCartList();
            string display = "";
            decimal Cart_Total = 0;
           
            int userId = Convert.ToInt32(Session["userId"]);
            

            foreach (ProductCart prod in PCLs)
            {
                decimal Item_Total = 0;
                if (userId.Equals(prod.sNUM)) {
                    dynamic product = client.getGoodItem(prod.ProductID);
                    Cart_Total += product.Goods_Price;
                    Item_Total = product.Goods_Price * prod.ItemQuantity;
                    //the loop
                    display += "<tr>";
                    display += "<td>";
                    display += "<div class='media'>";
                    display += " <div class='d-flex'>";
                    display += "  <img src = '"+ product.Goods_Image + "' alt='' />";
                    display += " </div>";
                    display += "<div class='media-body'>";
                    display += " <p>"+product.Goods_Name+"</p>";
                    display += "</div>";
                    display += " </div>";
                    display += "</td>";
                    display += "<td>";
                    display += "<h5>$"+product.Goods_Price+"</h5>";
                    display += "</td>";
                    display += "<td>";
                    display += " <div class='product_count'>";

                    display += " <span class='input-number-decrement'> <i class='ti-minus'></i></span>";
                    display += " <input class='input-number' type='text' value='" + prod.ItemQuantity + "' min='0' max='10'>";
                    display += "<span class='input-number-increment'> <i class='ti-plus'></i></span>";
                    display += " </div>";
                    display += "</td>";
                    display += "<td>";
                    display += "<h5>$"+ Item_Total + "</h5>";
                    display += " </td>";
                    display += "</tr>";
                }
            }

            foreach (ServiceCart service in SCLs)
            {
                decimal Item_Total = 0;
                if (userId.Equals(service.sNUM))
                {
                    dynamic services = client.getServiceItem(service.ServiceID);
                    Cart_Total += services.Services_Price;
                    Item_Total = services.Services_Price * service.ItemQuantity;
                    //the loop
                    display += "<tr>";
                    display += "<td>";
                    display += "<div class='media'>";
                    display += " <div class='d-flex'>";
                    display += "  <img src = '" + services.Services_Image_ + "' alt='' />";
                    display += " </div>";
                    display += "<div class='media-body'>";
                    display += " <p>" + services.Services_Name + "</p>";
                    display += "</div>";
                    display += " </div>";
                    display += "</td>";
                    display += "<td>";
                    display += "<h5>$" + services.Services_Price + "</h5>";
                    display += "</td>";
                    display += "<td>";
                    display += " <div class='product_count'>";

                    display += " <span class='input-number-decrement'> <i class='ti-minus'></i></span>";
                    display += " <input class='input-number' type='text' value='"+ service.ItemQuantity + "' min='0' max='10'>";
                    display += "<span class='input-number-increment'> <i class='ti-plus'></i></span>";
                    display += " </div>";
                    display += "</td>";
                    display += "<td>";
                    display += "<h5>$" + Item_Total + "</h5>";
                    display += " </td>";
                    display += "</tr>";
                }
            }



            //buttons
            display += "<tr class='bottom_button'>";
            display += " <td>";
            display += " <a class='btn_1' href='#'>Update Cart</a>";
            display += "</td>";
            display += "<td></td>";
            display += " <td></td>";
            display += "<td>";
            display += "<div class='cupon_text float-right'>";
            display += "<a class='btn_1' href='#'>Close Coupon</a>";
            display += " </div>";
            display += "</td>";
            display += "</tr>";
            display += "<tr>";
            display += "<td></td>";
            display += "<td></td>";
            display += "<td>";
            display += "<h5>Subtotal</h5>";
            display += "</td>";
            display += "<td>";
            display += "<h5>$"+ Cart_Total + "</h5>";
            display += "</td>";
            display += "</tr>";
            display += "<tr class='shipping_area'>";
            display += " <td></td>";
            display += "<td></td>";
            display += "<td>";
            display += "<h5>Shipping</h5>";
            display += " </td>";
            display += "<td>";
            display += "<div class='shipping_box'>";
            display += "<ul class='list'>";
            display += " <li>";
            display += "Flat Rate: $5.00";
            display += "<input type = 'radio' aria-label='Radio button for following text input'>";
            display += "</li>";
            display += " <li>";
            display += "Free Shipping";
            display += " <input type= 'radio' aria-label= 'Radio button for following text input'>";
            display += "</li>";
            display += "<li>";
            display += "Flat Rate: $10.00";
            display += "<input type = 'radio' aria-label= 'Radio button for following text input'>";
            display += "</li>";
            display += "<li class='active'>";
            display += "Local Delivery: $2.00";
            display += "<input type = 'radio' aria-label='Radio button for following text input'>";
            display += "</li>";
            display += " </ul>";
            display += "<h6>";
            display += " Calculate Shipping";
            display += "  <i class='fa fa-caret-down' aria-hidden='true'></i>";
            display += "</h6>";
            display += "<select class='shipping_select'>";
            display += " <option value = '1'> Bangladesh </option>";
            display += " <option value='2'>India</option>";
            display += " <option value = '4' > Pakistan </option>";
            display += "</select>";
            display += " <select class='shipping_select section_bg'>";
            display += " <option value = '1'> Select a State</option>";
            display += " <option value = '2'> Select a State</option>";
            display += " < option value = '4'> Select a State</option>";
            display += "</select>";
            display += "<input class='post_code' type='text' placeholder='Postcode/Zipcode' />";
            display += "<a class='btn_1' href='#'>Update Details</a>";
            display += "</div>";
            display += "</td>";
            display += "</tr>";


            Return_Cart.InnerHtml = display;

        }
    }
}