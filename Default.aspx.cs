using System;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
  [WebMethod(EnableSession=false)]
  public static string HelloWorld()
  {
    return "Hello: " + DateTime.Now.Millisecond;
  }
}