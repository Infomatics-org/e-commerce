using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class AllRevies : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic ServiceReview = client.getServiceReviews();

            dynamic ProductReview = client.getGoodReviews();

            string DisplayService = "";

            foreach(ServiceReview serviceReview in ServiceReview)
            {
                DisplayService += "<article class='blog_item'>";
                DisplayService += "<div class='blog_item_img'>";
                DisplayService += "<img class='card-img rounded-0' src='assets/img/blog/single_blog_1.png' alt=''>";
                DisplayService += "<a href = '#' class='blog_item_date'>";
                DisplayService += "<h3>15</h3>";
                DisplayService += "<p>Jan</p>";
                DisplayService += "</a>";
                DisplayService += "</div>";
                DisplayService += "<div class='blog_details'>";
                DisplayService += "<a class='d-inline-block' href='SingleReview.aspx'>";
                DisplayService += "<h2>Google inks pact for new 35-storey office</h2>";
                DisplayService += "</a>";
                DisplayService += "<p>That dominion stars lights dominion divide years for fourth have don't stars is that he earth it first without heaven in place seed it second morning saying.</p>";
                DisplayService += "<ul class='blog-info-link'>";
                DisplayService += "<li><a href = '#' ><i class='fa fa-user'></i> Travel, Lifestyle</a></li>";
                DisplayService += "<li><a href = '#' ><i class='fa fa-comments'></i> 03 Comments</a></li>";
                DisplayService += "</ul>";
                DisplayService += "</div>";
                DisplayService += "</article>";
            }



            foreach (GoodReview goodReview in ProductReview)
            {
                DisplayService += "<article class='blog_item'>";
                DisplayService += "<div class='blog_item_img'>";
                DisplayService += "<img class='card-img rounded-0' src='assets/img/blog/single_blog_1.png' alt=''>";
                DisplayService += "<a href = 'SingleReview.aspx' class='blog_item_date'>";
                DisplayService += "<h3>15</h3>";
                DisplayService += "<p>Jan</p>";
                DisplayService += "</a>";
                DisplayService += "</div>";
                DisplayService += "<div class='blog_details'>";
                DisplayService += "<a class='d-inline-block' href='single-blog.html'>";
                DisplayService += "<h2>Google inks pact for new 35-storey office</h2>";
                DisplayService += "</a>";
                DisplayService += "<p>That dominion stars lights dominion divide years for fourth have don't stars is that he earth it first without heaven in place seed it second morning saying.</p>";
                DisplayService += "<ul class='blog-info-link'>";
                DisplayService += "<li><a href = '#' ><i class='fa fa-user'></i> Travel, Lifestyle</a></li>";
                DisplayService += "<li><a href = '#' ><i class='fa fa-comments'></i> 03 Comments</a></li>";
                DisplayService += "</ul>";
                DisplayService += "</div>";
                DisplayService += "</article>";
            }

            ReturnReviews.InnerHtml = DisplayService;




        }
    }
}