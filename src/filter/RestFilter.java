package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


public class RestFilter implements Filter {
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
	
		HttpServletRequest request = (HttpServletRequest)req;
		String method = request.getMethod();
		System.out.println("METHOD == "+method);
		
		chain.doFilter(req, resp);
	}	
	
	public void destroy() {
		
		
	}
	
}
