using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{


    public partial class Products : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            dynamic Goods = client.getGoodsList();
            String DisplayGoods = " ";



            foreach (Good good in Goods) {
                DisplayGoods+= "<div class='col-xl-4 col-lg-4 col-md-6'>";
                DisplayGoods += "<div class='single-product mb-60'>";
                DisplayGoods += "<div class='product-img'>";
                DisplayGoods += "<img src = '"+good.Goods_Image+"' alt='' height='437' width='520'>";
                DisplayGoods += "<div class='new-product'>";
                DisplayGoods += "<span>New</span>";
                DisplayGoods += "</div>";
                DisplayGoods += "</div>";
                DisplayGoods += "<div class='product-caption'>";
                DisplayGoods += "<div class='product-ratting'>";
                DisplayGoods += "<h4><a href ='SingleProduct.aspx?productID="+ good.Goods_ID + "' >" + good.Goods_Name + "</a></h4>";
                DisplayGoods += "</div>";
                DisplayGoods += "<h4 style='color:blue;'><a href ='#' >"+good.Goods_Description+"</a></h4>";
                DisplayGoods += "<div class='price'>";
                DisplayGoods += "<ul>";
                DisplayGoods += "<li>"+good.Goods_Price+"</li>";
                DisplayGoods += "<li class='discount'>$60.00</li>";
                DisplayGoods += "</ul>";
                DisplayGoods += "</div>";
                DisplayGoods += "</div>";
                DisplayGoods += "</div>";
                DisplayGoods += "</div>";

            }
            ReturnProducts.InnerHtml = DisplayGoods;



        }
                }
                }