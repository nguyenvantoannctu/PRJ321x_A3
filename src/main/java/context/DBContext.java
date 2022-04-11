package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	private final String serverName = "DESKTOP-16EN6K8\\TonTon";
	private final String dbName = "ShoppingDB";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userId = "sa";
	private final String passWord = "123456";
	
	public Connection getConnection() throws Exception 
	{
		
		String url = "jdbc:sqlserver://" +serverName + ":"+portNumber+ instance +";DatabaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
		if(instance == null && instance.trim().isEmpty()) 
		{
			url = "jdbc:sqlserver://" +serverName + ":"+portNumber+";DatabaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
		}
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url,userId,passWord);
	}
}
