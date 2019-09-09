package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import wrapper.EncryptWrapper;

/**
 * Servlet Filter implementation class EncryptFilter
 */

@WebFilter(filterName="encrypt", servletNames= {"InsertMemberServlet", "LoginServlet","MyPwdUpdateServlet","SearchPwdServlet"})
public class EncryptFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncryptFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// 래퍼 : 필터에 전달된 request나 response를 변경할 때 사용하는 개념
		//		 request나 response를 특정한 형태로 감싸서 변형시킴
		
		// request --> wrapper로 변형
		// 전달 받아온 request를 암호화 래퍼로 감싼 채로 생성
		EncryptWrapper encWrapper = new EncryptWrapper((HttpServletRequest)request);
		
		
		//chain.doFilter(request, response);
		chain.doFilter(encWrapper, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
