package com.bin.myspring.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class BasePathListener extends HttpServlet implements
		ServletRequestListener {
	private static final long serialVersionUID = 1824920962239905170L;
	private String basePath = "";

	public BasePathListener() {
		// TODO Auto-generated constructor stub
	}

	public void requestDestroyed(ServletRequestEvent sce) {
		if (!basePath.equals(""))
			return;

		HttpServletRequest request = (HttpServletRequest) sce
				.getServletRequest();
		String path = request.getContextPath();
		basePath = request.getScheme() + "://" + request.getServerName() + ":"
				+ request.getServerPort() + path + "/";
		request.getServletContext().setAttribute("basePath", basePath);
	}

	public void requestInitialized(ServletRequestEvent arg0) {
		// TODO Auto-generated method stub

	}
}
