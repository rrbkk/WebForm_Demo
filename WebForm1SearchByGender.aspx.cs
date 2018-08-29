using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeByGender(DropDownList1.SelectedValue);
            }
            Label1.Text = DateTime.Now.ToString();
        }

        private void GetEmployeeByGender(string EmployeeGender)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("spGetEmployeeByGender ", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            SqlParameter paramEmpGender = new SqlParameter();
            paramEmpGender.ParameterName = "@EmployeeGender";
            paramEmpGender.Value = EmployeeGender;
            da.SelectCommand.Parameters.Add(paramEmpGender);

            DataSet DS = new DataSet();
            da.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataBind();

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetEmployeeByGender(DropDownList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1Emp.aspx");
        }
    }
}