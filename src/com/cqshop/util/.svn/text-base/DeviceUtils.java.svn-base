package com.cqshop.util;

import javax.servlet.http.HttpServletRequest;

/**
 * Utils - 判断操作设备（PC端还是移动端）
 * 
 * 
 * 
 */
public final class DeviceUtils {

	/** PC User-Agent information */
	private static final String[] PCHEADERS = new String[] { "Windows 98",
			"Windows ME", "Windows 2000", "Windows XP", "Windows NT", "Ubuntu" };

	private DeviceUtils() {

	}

	/**
	 * PC or phone device
	 *
	 * @param request
	 *            httpRequest
	 * @return true: PC request;false: phone and pad request ;
	 */
	public static boolean isMobileDevice(HttpServletRequest request) {
		String userAgent = request.getHeader("user-agent");
		for (int i = 0; userAgent != null && !userAgent.trim().equals("")
				&& i < PCHEADERS.length; i++) {
			if (userAgent.contains(PCHEADERS[i])) {
				return false;
			}
		}
		return true;
	}
}
