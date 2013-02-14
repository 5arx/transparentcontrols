using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProASP3_5.Part1
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lOut.Text = string.Format("ViewState: {0}", Request["__VIEWSTATE"]);
        }

        protected void btnDecrypt_Click1(object sender, EventArgs e)
        {
            string viewStateString = Request["__VIEWSTATE"];
            // viewStateString contains the view state information.
            // Convert the Base64 string to an ordinary array of bytes
            // representing ASCII characters.
            byte[] stringBytes = Convert.FromBase64String(viewStateString);
            // Deserialize and display the string.
            string decodedViewState = System.Text.Encoding.ASCII.GetString(stringBytes);
            lOut.Text = string.Format("ViewState: {0}<br/>Decrypted: {1}", viewStateString, decodedViewState);

        }
    }
}
