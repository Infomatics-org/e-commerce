using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHelperForum
{
    public partial class Site1 : System.Web.UI.MasterPage

        

        {
            public static List<ProdouctClass> ProdouctItem = new List<ProdouctClass>();
            public static List<ServiceClass> ServiceItem = new List<ServiceClass>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}