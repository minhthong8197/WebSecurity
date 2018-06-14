package controller;

import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBConnection;

@WebServlet("/NewPost")
public class NewPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("in doPost of servlet NewPost");
		try {
			resp.setContentType("text/html;charset=utf8");
			PrintWriter out = resp.getWriter();
			String PostName = req.getParameter("P_name");
			String PostContent = req.getParameter("txtcontent");
			String Pdate = req.getParameter("P_date");
			String Ptl = req.getParameter("P_tl");
			if (DBConnection.newPost(PostName, PostContent, Ptl, Pdate) > 0) {
				out.print("<script>");
				out.print("alert(\"Gửi Bài Viết Thành Công!!!\");");
				out.print("</script>");
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Writer_Manager.jsp");
				rd.include(req, resp);
			} else {
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Writer_Manager.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			System.out.println("error in doPost of servlet NewPost\n" + e.getMessage());
		}
	}
}
