package com.jutubao.constant;

/**
 * 项目名称：
*/
public class Const {
	//请求地址验签方式
	public static String key = "jutu_key";
	public static String secret= "jutu_secret";
	public static String PARAMS_IS_NULL = "30001";
	public static String UME_IS_NULL = "30002";
	public static String VALID_UME_ERROR = "30003";
	public static String INVALID_SIGN="30004";
	public static String VERIFY_SIGNATURE_FAILED = "30005";
	public static String SUCCESS = "30006";
	//cms首页请求访问结果参数
	public final static String NO_TYPE_PARAMS = "40001";
	
	
	//请求UME时间常量 
	public static final Integer SIGN_UME_MAX = 30;
	public static final Integer SIGN_UME_MIN = -30;
	
	//全局常量
	public static String SUCCESS_CODE="SUCCESS";
	public static String ERROR_CODE = "ERROR";
	
	//参数验证常量
	public static String isNull = "PM0001";
	
	//数据库异常
	public static String db_error = "DB0001";
	
	
	//用户登录注册
	public static String USER_NAME_IS_NULL = "50001";
	public static String PASSWORD_IS_NULL  = "50002";
	public static String USER_OR_PASSWORD_IS_ERROR="50003";
	
	
}
