using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samples.CustomValidatorClient
{
    public partial class CustomValidatorClient : System.Web.UI.Page
    {
        
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(gLoad);
        }

        protected void gLoad(object o, EventArgs e)
        {
            btnSubmit.Click += BtnSubmit_Click;
        }

        protected void BtnSubmit_Click(object o, EventArgs e)
        {
            if (Page.IsValid)
                lbMsg.Text = "The values are valid!";
            else
                lbMsg.Text = "The values are invalid!";
        }
    }
}