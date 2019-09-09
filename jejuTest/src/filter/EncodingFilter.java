package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
//@webFilter(filterName="어떤 역할을 하는 필터인지", urlPatterns="어떤 서블릿을 가기전에 거칠 것인지 패턴")
@WebFilter(filterName="encoding", urlPatterns="/*")
public class EncodingFilter implements Filter  {
	
	/*
	 * Filter클래스의 라이프 사이클
	 * - init() : Filter클래스 생성
	 * - doFilter(request, response, chain) : 요청에 필터를 적용하겠다 판단이 되면 이 메소드 실행
	 * - destroy() : 인스턴스를 제거할 때 호출됨
	 * 
	 * Filter(인터페이스)의 doFilter(request, response, chain)는 진짜 필터링 작업을 함
	 * FilterChain의 doFilter(request, response)는 다음 필터를 호출거나, 현재 마지막 필터면 servlet으로 호출
	 */

    /**
     * Default constructor. 
     */
    public EncodingFilter() {
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
		
		System.out.println("--- 인코딩 필터 동작합니다. ---");
		request.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);
		
		System.out.println("--- 서블릿 동작 후 처리되는 코드입니다. ---");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
