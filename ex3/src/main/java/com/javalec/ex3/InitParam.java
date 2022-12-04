package com.javalec.ex3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParam
 */
@WebServlet(urlPatterns = {"/Init"}, initParams = {@WebInitParam(name="id",value="aaaa"),@WebInitParam(name="pw",value="1234")})
public class InitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		<<< 초기화 파라미터 실습 >>>
		//GenericServlet을 HttpServlet이 상속받고 있고 내가 만든 파일이 HttpServlet을 상속받고 있기 때문에
		//바로 getInitParamter사용하면 됨
		
		String id = getInitParameter("id");
		String pw = getInitParameter("password");
		
		System.out.println("id" + id);
		System.out.println("pw" + pw);
		
		*/
		
		
		/*
		  
		<< Servlet-context 실습 >>
		String id = getServletContext().getInitParameter("id");
		String pw = getServletContext().getInitParameter("pw");
		
		System.out.println("id > " + id);
		System.out.println("pw > " + pw);
		
		*/
		
		/*
		 << ServletContextListener 실습 >> */
		System.out.println("doGet");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
