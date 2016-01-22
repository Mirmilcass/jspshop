package beans;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class MyCalendar {

	private String delimiter = "/";

	public void setDelimiter(String delimiter) {
		this.delimiter = delimiter;
	}

	public String getToday() {
		GregorianCalendar calender = new GregorianCalendar();
		StringBuffer today = new StringBuffer();
		DecimalFormat df = new DecimalFormat("00");
		today.append(calender.get(Calendar.YEAR));
		today.append(this.delimiter);
		today.append(df.format(calender.get(Calendar.MONTH) + 1));
		today.append(this.delimiter);
		today.append(df.format(calender.get(Calendar.DATE)));
		return today.toString();
	}
}
