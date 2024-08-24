using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace  Samples.ASP
{
    public class CustomValidatorClientSample : Page
    {
        protected TextBox txtSerie,txtSerie2;
        protected Button btnSubmit;
        protected Label lbMsg;
        protected RequiredFieldValidator reqvtxtSerie,reqvtxtSerie2;
        protected CustomValidator custvtxtSerie,custvtxtSerie2;

        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(gLoad);
        }

        protected void gLoad(object o, EventArgs e)
        { 
            btnSubmit.Click += BtnSubmit_Click;
        }

        protected void BtnSubmit_Click(object o,EventArgs e)
        {
            if(Page.IsValid)
                lbMsg.Text = "The values are valid!";
                else
                lbMsg.Text = "The values are invalid!";
        }
    }
}