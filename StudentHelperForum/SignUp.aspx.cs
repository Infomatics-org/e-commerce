using StudentHelperForum.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class SignUp : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void sign_up(object sender, EventArgs e)
        {


            int sNum = Convert.ToInt32(StudentNumber.Value);
            string sAddress = StudentAddress.Value;
            string sEmail = StudentEmail.Value;
            string personalEmail = email.Value;
            int cellphoneNum = Convert.ToInt32(CellphoneNumber.Value) ;
            string fName = firstname.Value;
            string lName = lastname.Value;
            string pword = password.Value;
         
            bool reg = client.SignUp(sNum, sAddress, sEmail, personalEmail, cellphoneNum, fName, lName, pword);

            if (reg == true)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("SignUp.aspx");
            }
        }
    }
}