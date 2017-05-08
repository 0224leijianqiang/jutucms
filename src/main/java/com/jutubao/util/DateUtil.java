package com.jutubao.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/** 
 * 说明：日期处理
 * 创建人：wjm
 * 修改时间：2015年11月24日
 * @version
 */
public class DateUtil {
	
	private final static SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
	private final static SimpleDateFormat sdfDay = new SimpleDateFormat("yyyy-MM-dd");
	private final static SimpleDateFormat sdfDays = new SimpleDateFormat("yyyyMMdd");
	private final static SimpleDateFormat sdfTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private final static SimpleDateFormat sdfDaystr = new SimpleDateFormat("yyyy年MM月dd日");
	
	/**
	 * 对应php十位日期时间戳
	 * @return
	 */
	public static Integer getCurrentTimeMillis(){
		return Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(0,10));
	}
	
	public static Integer getCurrentTimeMillis(String date){
		try {
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
			return Integer.parseInt(String.valueOf(df.parse(date).getTime()).substring(0, 10));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 获取YYYY格式
	 * @return
	 */
	public static String getYear() {
		return sdfYear.format(new Date());
	}
	public static String getDaystr(){
		return sdfDaystr.format(new Date());
	}
	/**
	 * 获取YYYY-MM-DD格式
	 * @return
	 */
	public static String getDay() {
		return sdfDay.format(new Date());
	}
	
	/**
	 * 获取YYYYMMDD格式
	 * @return
	 */
	public static String getDays(){
		return sdfDays.format(new Date());
	}
	
	/**
	 * 获取YYYY-MM-DD HH:mm:ss格式
	 * @return
	 */
	public static String getTime() {
		return sdfTime.format(new Date());
	}

	/**
	* @Title: compareDate
	* @Description: TODO(日期比较，如果s>=e 返回true 否则返回false)
	* @param s
	* @param e
	* @return boolean  
	* @throws
	* @author wjm
	 */
	public static boolean compareDate(String s, String e) {
		if(fomatDate(s)==null||fomatDate(e)==null){
			return false;
		}
		return fomatDate(s).getTime() >=fomatDate(e).getTime();
	}

	/**
	 * 格式化日期
	 * @return
	 */
	public static Date fomatDate(String date) {
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try {
			return fmt.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 校验日期是否合法
	 * @return
	 */
	public static boolean isValidDate(String s) {
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try {
			fmt.parse(s);
			return true;
		} catch (Exception e) {
			// 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
			return false;
		}
	}
	
	/**
	 * @param startTime
	 * @param endTime
	 * @return
	 */
	public static int getDiffYear(String startTime,String endTime) {
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try {
			//long aa=0;
			int years=(int) (((fmt.parse(endTime).getTime()-fmt.parse(startTime).getTime())/ (1000 * 60 * 60 * 24))/365);
			return years;
		} catch (Exception e) {
			// 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
			return 0;
		}
	}
	 
	/**
     * <li>功能描述：时间相减得到天数
     * @param beginDateStr
     * @param endDateStr
     * @return
     * long 
     * @author Administrator
     */
    public static long getDaySub(String beginDateStr,String endDateStr){
        long day=0;
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.util.Date beginDate = null;
        java.util.Date endDate = null;
        
            try {
				beginDate = format.parse(beginDateStr);
				endDate= format.parse(endDateStr);
			} catch (ParseException e) {
				e.printStackTrace();
			}
            day=(endDate.getTime()-beginDate.getTime())/(24*60*60*1000);
            //System.out.println("相隔的天数="+day);
      
        return day;
    }
    public static String getSub(String beginDateStr,String endDateStr){
    	 java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
         java.util.Date beginDate = null;
         java.util.Date endDate = null;
             try {
 				beginDate = format.parse(beginDateStr);
 				endDate= format.parse(endDateStr);
 			} catch (ParseException e) {
 				e.printStackTrace();
 				return "";
 			}
             long day=(endDate.getTime()-beginDate.getTime())/(24*60*60*1000);
             long hours =(endDate.getTime()-beginDate.getTime()-day*(24*60*60*1000))/(60*60*1000);
             long min =(endDate.getTime()-beginDate.getTime()-day*(24*60*60*1000)-hours*60*60*1000)/(60*1000);
             //System.out.println("相隔的天数="+day);
         return day+"天 "+hours+"小时 "+min+"分钟";
    }
    
    public static String getSubMin(String beginDateStr,String endDateStr){
   	 java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.util.Date beginDate = null;
        java.util.Date endDate = null;
            try {
				beginDate = format.parse(beginDateStr);
				endDate= format.parse(endDateStr);
			} catch (ParseException e) {
				return "";
			}
            long day=(endDate.getTime()-beginDate.getTime())/(24*60*60*1000);
            long hours =(endDate.getTime()-beginDate.getTime()-day*(24*60*60*1000))/(60*60*1000);
            long min =(endDate.getTime()-beginDate.getTime()-day*(24*60*60*1000)-hours*60*60*1000)/(60*1000);
            //System.out.println("相隔的天数="+day);
            StringBuffer sbBuffer = new StringBuffer();
            if (day!=0) {
				sbBuffer.append(day+"天 ");
			}if(hours!=0){
				sbBuffer.append(hours+"小时");
			}if(min!=0){
				sbBuffer.append(min+"分钟");
			}else{
				sbBuffer.append("0");
			}
        return sbBuffer.toString();
   }
    
    public static long getMin(String beginDateStr,String endDateStr){
   	 java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.util.Date beginDate = null;
        java.util.Date endDate = null;
            try {
				beginDate = format.parse(beginDateStr);
				endDate= format.parse(endDateStr);
			} catch (ParseException e) {
				e.printStackTrace();
				return 0L;
			}
        long min =(endDate.getTime()-beginDate.getTime())/(60*1000);
        return min;
   }
    public static long getSecond(String beginDateStr,String endDateStr){
      	 java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
           java.util.Date beginDate = null;
           java.util.Date endDate = null;
               try {
   				beginDate = format.parse(beginDateStr);
   				endDate= format.parse(endDateStr);
   			} catch (ParseException e) {
   				e.printStackTrace();
   				return 0L;
   			}
         return (endDate.getTime()-beginDate.getTime())/(1000);
     }
    public static long afterSeconds(long begin){
    	long currentMillis = System.currentTimeMillis();
    	return (currentMillis - begin)/(1000);
    }
    /**
     * 得到n天之后的日期
     * @param days
     * @return
     */
    public static String getAfterDayDate(String days) {
    	int daysInt = Integer.parseInt(days);
    	
        Calendar canlendar = Calendar.getInstance(); // java.util包
        canlendar.add(Calendar.DATE, daysInt); // 日期减 如果不够减会将月变动
        Date date = canlendar.getTime();
        
        SimpleDateFormat sdfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateStr = sdfd.format(date);
        
        return dateStr;
    }
    
    /**
     * 得到n天之后是周几
     * @param days
     * @return
     */
    public static String getAfterDayWeek(String days) {
    	int daysInt = Integer.parseInt(days);
        Calendar canlendar = Calendar.getInstance(); // java.util包
        canlendar.add(Calendar.DATE, daysInt); // 日期减 如果不够减会将月变动
        Date date = canlendar.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("E");
        String dateStr = sdf.format(date);
        return dateStr;
    }
    /**
     * 获取两个日期之间的日期格式数组(前包后包)
     * @param beginDate
     * @param endDate
     * @return
     */
    public static String[] getDateArr(String beginDate,String endDate){
    	int days =  (int)DateUtil.getDaySub(beginDate,endDate);
    	String[] dateArr = new String[days+1];
    	try {
    		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    		Date date = simpleDateFormat.parse(beginDate);
    		Calendar calendar = Calendar.getInstance();
    		calendar.setTime(date);
    		dateArr[0] = simpleDateFormat.format(date);
			for(int i=1;i<dateArr.length;i++){
				calendar.add(Calendar.DATE, 1);
				date = calendar.getTime();
				dateArr[i] = simpleDateFormat.format(date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    	for(String s:dateArr){
    		System.out.println(s);
    	}
    	return dateArr;
    }
    		
    public static void main(String[] args) {
//    	System.out.println(getDays());
//    	System.out.println(getAfterDayWeek("3"));
    	//getDateArr("2016-01-21","2016-04-02");
    	String a = getSubMin("2016-06-12","2016-06-12");
    	System.out.println(a);
    	
    }

}
