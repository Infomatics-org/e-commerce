using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class SingleService : System.Web.UI.Page
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

            id = Int32.Parse(Request.QueryString.Get("serviceID"));
            if (id == 0)
            {
                Response.Redirect("MasterHome.aspx");
            }
            else
            {
                var GetSingleService = client.getServiceItem(id);

                Return_Service_Imge.InnerHtml = "<img src ='" + GetSingleService.Services_Image_ + "' height='520' width='437' alt = '#' >";
                Return_Service_Name.InnerHtml = "<h3>" + GetSingleService.Services_Name + "</h3>";
                Return_Service_Description.InnerHtml = GetSingleService.Services_Description;
                Return_Service_Price.InnerHtml = "$" + GetSingleService.Services_Price;
            }

        }


        public void Adding_Cart(object sender, EventArgs e)
        {
            sNum = Convert.ToInt32(Session["userId"]);
            //product quantity
            Session["Serviceitems"] = 1;
            int quantity = Int32.Parse(quantity_input.Value);
            var item = new ServiceClass(id, Convert.ToInt32(quantity));
            Site1.ServiceItem.Add(item);
            client.Add_To_Cart_Service(sNum, id, quantity);
            int items = Convert.ToInt32(Session["Serviceitems"].ToString());
            items += 1;
            Session["Serviceitems"] = items;

        }
    }
}