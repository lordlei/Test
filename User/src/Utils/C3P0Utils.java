package Utils;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

 
public class C3P0Utils {
	private static ComboPooledDataSource cpds = new ComboPooledDataSource();
	
	
	/**
	 * ?¡Â??????CombolPooledDatasource
	 * @return CombolPooledDatasource
	 * 
	 * */
	public static ComboPooledDataSource getDataSource() {
		return cpds;
	}
	
	/**
	 * 
	 * ?¡Â??????Connection
	 * @author dell3020mt-50
	 * @param void 
	 * @return Connection
	 * 
	 * */
	public static Connection getConnection() {
		try {
			return cpds.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
