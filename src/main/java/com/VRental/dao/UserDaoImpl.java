package com.VRental.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.VRental.model.Booking;
import com.VRental.model.Login;
import com.VRental.model.User;

import com.VRental.model.Vehicle;

public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	public int register(User user) {
		String sql = "insert into users values(?,?,?,?,?);";

		return jdbcTemplate.update(sql,
				new Object[] { user.getId(), user.getName(), user.getEmail(), user.getPassword(),user.getRoles() });

	}

	public User loginValidation(Login login) {
		String validSQL = "select * from users where uname= '" + login.getName() + "' and upassword= '"
				+ login.getPassword() + "';";

		List<User> users = jdbcTemplate.query(validSQL, new userMapper());
		return users.size() > 0 ? users.get(0) : null;
	}

	public int addVehicle(Vehicle vehicle) {
		String sql = "insert into vehicle values(?,?,?,?,?,?,?,?);";

		return jdbcTemplate.update(sql, new Object[] { vehicle.getVcpkm(), vehicle.getVmileage(), vehicle.getVprice(),
				vehicle.getVrn(), vehicle.getVname(), vehicle.getVfueltype(), vehicle.getVtype(), vehicle.getImg() });
	}

	public int bookVehicle(Booking book) {
		String sql = "insert into booking values(?,?,?,?,?);";

		return jdbcTemplate.update(sql, new Object[] { book.getStartDate(), book.getEndDate(), book.getPickupLocation(),
				book.getAadharno(), book.getAddress() });
	}

	public List<Vehicle> getVehicles() {

		String sql = "select * from vehicle;";

		return jdbcTemplate.query(sql, new RowMapper<Vehicle>() {
			public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
				Vehicle v = new Vehicle();

				v.setVcpkm(rs.getInt(1));
				v.setVmileage(rs.getInt(2));
				v.setVprice(rs.getInt(3));
				v.setVrn(rs.getString(4));
				v.setVname(rs.getString(5));
				v.setVfueltype(rs.getString(6));
				v.setVtype(rs.getString(7));
				v.setImg(rs.getString(8));

				return v;
			}

		});
	}

	public List<Vehicle> getVehicleByRegnum(String rn) {

		String sql = "select * from vehicle where vrn='" + rn + "'";

		return jdbcTemplate.query(sql, new RowMapper<Vehicle>() {
			public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
				Vehicle v = new Vehicle();
				
				v.setVcpkm(rs.getInt(1));
				v.setVmileage(rs.getInt(2));
				v.setVprice(rs.getInt(3));
				v.setVrn(rs.getString(4));
				v.setVname(rs.getString(5));
				v.setVfueltype(rs.getString(6));
				v.setVtype(rs.getString(7));
				v.setImg(rs.getString(8));

				return v;
			}

		});
	}
}

class userMapper implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();

		user.setId(rs.getInt("id"));
		user.setName(rs.getString("uname"));
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("upassword"));
		user.setRoles(rs.getString("roles"));
		return user;
	}
}
