using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Samples.CustomValidatorServer
{
    public partial class CustomValidatorServer : System.Web.UI.Page
    {
        protected RequiredFieldValidator reqvtxtRfc;
        

        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(gLoad);
        }

        protected void gLoad(object o, EventArgs e)
        {
            btnSubmit.Click += btnSubmit_Click;
        }

        protected void btnSubmit_Click(object o, EventArgs e)
        {
            if (Page.IsValid)
                lbMsg.Text = " The values are valid!";
            else
                lbMsg.Text = " The values are not valid";
        }

        protected void checkNum(object o, ServerValidateEventArgs args)
        {
            if (OnlyNum(args.Value))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void checkChar(object o, ServerValidateEventArgs args)
        {
            if (OnlyChar(args.Value))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        bool OnlyNum(string s)
        {
            string pattern = @"^\d+$";
            if (Regex.Match(s, pattern).Success)
                return true;
            return false;
        }

        bool OnlyChar(string s)
        {
            string pattern = @"^[aA-zZ]+$";
            if (Regex.Match(s, pattern).Success)
                return true;
            return false;
        }
    }
}