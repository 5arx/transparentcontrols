using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace transparent.controls.interfaces
{
    #region Interface_and_Class_Definitions
    //## Interface and Class definitions
    public interface IResult {
        Guid QuestionId
        {
            get;
            set;
        }
        int Order
        {
            get;
            set;
        }
        List<string> ResultList
        {
            get;
        }
    }
    public class ResultHandler {
        List<IResult> _results;

        public ResultHandler() { }

        public string outputResultsAsHtml() {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            foreach (IResult ir in _results) {
                sb.Append("Question: " + ir.QuestionId + ": ");

                foreach (string ans in ir.ResultList) {
                    sb.Append("<br/>" + ans);
                }
                sb.Append("End of question " + ir.QuestionId);
            }

            return sb.ToString();
        }
    }


    public class DateResult: IResult {
        public int Order { get; set; }
        public Guid QuestionId { get; set; }

        private DateTime? dt {
            get {
                return new DateTime?();
            }
            set {
                dt = value;    
            }
        }

        public List<string> ResultList {
            get {
                List<string> lst = new List<string>();
                lst.Add(dt.ToString());
                return lst;
            }
        }

    } 
    //## END Interface and Class Definition
    #endregion
    public partial class InterfaceDemo1 : transparent.include.classes.BaseControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}