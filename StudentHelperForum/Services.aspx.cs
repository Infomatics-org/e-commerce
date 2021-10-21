using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class ProductCatagory : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic Services = client.getServicesList();
            string DisplayService = " ";

            foreach (Service service in Services)
            {

                DisplayService += "<div class='col-lg-6 col-sm-6'>";
                DisplayService += "<div class='single_product_item'>";
                DisplayService += "<img src = '"+service.Services_Image_+ "' height='437' width='350'>";
                DisplayService += "<h3> <a href = 'SingleService.aspx?serviceID=" + service.Services_ID + "'>" + service.Services_Name+"</a> </h3> ";
                DisplayService += "<p>" + service.Services_Description + "</p>";
                DisplayService += "<p>R"+service.Services_Price+"</p>";
                DisplayService += "</div>";
                DisplayService += "</div>";
              
            }

            ReturnServices.InnerHtml = DisplayService;





            }
    }
}