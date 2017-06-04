using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Global 的摘要说明
/// </summary>
namespace myGlobalSpace
{
    static public class Global
    {
        public static int j = 0; 
        public static int t = 0;
        public static int T
        {
            get
            {
                return t;
            }
            set
            {
                t = value;
            }
        }
    }
}
