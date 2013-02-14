using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace transparent.include.classes
{
    public static class WebUtils
    {
        public enum ControlType
        {
            BasePage,
            BaseControl,
            RegularMSDotNETControl
        }

        /// <summary>
        /// Checks up the control tree for an ancestor which matches a type in typesToCheck
        /// </summary>
        /// <param name="c"></param>
        /// <param name="typesToCheck"></param>
        /// <returns></returns>
        public static Type AncestorTypeOf(Control c, params Type[] typesToCheck)
        {
            var parent = c.Parent;

            if (parent == null)
            {
                return c.GetType();
            }
            if (typesToCheck.Contains(parent.GetType()))
            {
                return parent.GetType();
            }

            return AncestorTypeOf(parent, typesToCheck);
        }

        public static ControlType FirstContainer(Control c){
            Type t = AncestorTypeOf(c, new Type[]{typeof(BasePage), typeof(BaseControl)});
            if ( t == typeof(BasePage)){
                return ControlType.BasePage;
            }
            else if (t == typeof(BaseControl)){
                return ControlType.BaseControl;
            }
            else{
                return ControlType.RegularMSDotNETControl;
            }
        }

    }
}