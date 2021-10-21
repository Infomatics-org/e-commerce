using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class SingleProduct : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        int id = 0;
        int sNum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["userId"] != null)
            {
                Add_to_div.Visible = true;

            }

            id = Int32.Parse(Request.QueryString.Get("productID"));
            if (id == 0)
            {
                Response.Redirect("MasterHome.aspx");
            }
            else
            {
               var GetSingleProduct = client.getGoodItem(id);

               Return_Product_Imge.InnerHtml = "<img src ='" + GetSingleProduct.Goods_Image + "' height='520' width='437' alt = '#' >";
               Return_Product_Name.InnerHtml = "<h3>"+ GetSingleProduct.Goods_Name+ "</h3>";
                Return_Product_Description.InnerHtml = GetSingleProduct.Goods_Description;
                Return_Product_Price.InnerHtml = "$"+GetSingleProduct.Goods_Price;
            }
        }

        public void Adding_Cart(object sender, EventArgs e)
        {
            sNum = Convert.ToInt32(Session["userId"]);
            //product quantity
            Session["Productitems"] = 1;
            int quantity = Int32.Parse(quantity_input.Value);
            var item = new ProdouctClass(id, Convert.ToInt32(quantity));
            Site1.ProdouctItem .Add(item);
            client.Add_To_Cart_Product(sNum, id, quantity);
            int items = Convert.ToInt32(Session["Productitems"].ToString());
            items += 1;
            Session["Productitems"] = items;

        }
    }
}