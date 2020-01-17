import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetServlet
 */
@WebServlet("/GetServlet")
public class GetServlet extends HttpServlet {
	private int id = 24;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Submission status: success").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		response.setContentType("text/html");

		request.setCharacterEncoding("utf-8");

		String name=request.getParameter("name");
		
		String age=request.getParameter("age");

		String sex=request.getParameter("sex");

		String wechat=request.getParameter("wechat");

		String personality=request.getParameter("personality");
		
		String bedtime=request.getParameter("bedtime");
		
		String getup=request.getParameter("getup");
		
		String date=request.getParameter("date");

		String fav=request.getParameter("fav");
		
		String[] temp=request.getParameterValues("hobby");
		
		String hobby="";
		
		for (int i = 0; i < temp.length; i++) {
			hobby+=temp[i];
			if(i != temp.length-1) {
				hobby+=",";
			}
		} 
		
		String[] temp1=request.getParameterValues("food");
		
		String food="";
		
		for (int i = 0; i < temp1.length; i++) {
			food+=temp1[i];
			if(i != temp1.length-1) {
				food+=",";
			}
		} 
		
		String u_age=request.getParameter("u_age");
		
		String[] temp2=request.getParameterValues("u_per");
		
		String u_per="";
		
		for (int i = 0; i < temp2.length; i++) {
			u_per+=temp2[i];
			if(i != temp2.length-1) {
				u_per+=",";
			}
		} 
		
		String u_rest=request.getParameter("u_rest");
		
		String u_sex=request.getParameter("u_sex");
		
		String travel=request.getParameter("travel");
		
		String[] temp3=request.getParameterValues("music");
		
		String music="";
		
		for (int i = 0; i < temp3.length; i++) {
			music+=temp3[i];
			if(i != temp3.length-1) {
				music+=",";
			}
		} 
		
		Employ employ=new Employ(id,name,Integer.parseInt(age),Integer.parseInt(sex),wechat,Integer.parseInt(personality),Integer.parseInt(bedtime),Integer.parseInt(getup),Integer.parseInt(date),Integer.parseInt(fav),hobby,food,Integer.parseInt(u_age),u_per,Integer.parseInt(u_rest),Integer.parseInt(u_sex),Integer.parseInt(travel),music);
		
		id++;
		
		System.out.println("获取成功!"); 

		EmployAdd ema=new EmployAdd();

		ema.addEmploy(employ);
		
		response.sendRedirect("http://www.yizhoucp999.xyz/");
	}

}
