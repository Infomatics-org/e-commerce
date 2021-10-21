using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StudentHelperForum.ServiceReference1;

namespace StudentHelperForum
{
    public partial class Login : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void sign_in(object sender, EventArgs e)
        {
            string pEmail = personalEmail.Value;
            string pword = password.Value;
            
             string user_id = client.SignIn(pEmail,pword);

            if (user_id != null)
            {
                int userId = Convert.ToInt32(user_id);
                Session["userId"] = userId;

                Response.Redirect("MasterHome.aspx");
            }
        }
    }
}