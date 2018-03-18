package com.yolanda.form.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.yolanda.form.model.Contact;

@Repository
public class ContactDaoImpl implements ContactDao {

	private JdbcTemplate JdbcTemplate;

	@Autowired
	public ContactDaoImpl(JdbcTemplate jdbcTemplate) {
		this.JdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<Contact> getAllContacts() {
		String selectSql = "select * from yolanda_contact";
		List<Contact> contacts = JdbcTemplate.query(selectSql, new RowMapper<Contact>() {

			@Override
			public Contact mapRow(ResultSet resultSet, int rowNum) throws SQLException {
				Contact contact = new Contact();
				contact.setId(resultSet.getInt("id"));
				contact.setName(resultSet.getString("name"));
				contact.setPhoneNo(resultSet.getString("phoneNo"));
				contact.setAddress(resultSet.getString("address"));
				contact.setGender(resultSet.getString("gender"));
				contact.setCreatedBy(resultSet.getString("createBy"));
				contact.setCreatedDate(resultSet.getTimestamp("createDate"));
				contact.setUpdateBy(resultSet.getString("updateBy"));
				contact.setUpdateDate(resultSet.getTimestamp("updateDate"));
				return contact;
			}
			
		});
		return contacts;
	}

	@Override
	public Contact addContact(Contact contact) {
		String selectSql = "insert into yolanda_contact "
				+ "(name, address, phoneNO, gender, createBy, createDate, updateBy, updateDate)"
				+ "values (?, ?, ?, ?, ?,?, ?, ?)";
		JdbcTemplate.update(selectSql, contact.getName(), contact.getAddress(), contact.getPhoneNo(),
				contact.getGender(), contact.getCreatedBy(),contact.getCreatedDate(),contact.getUpdateBy(),contact.getUpdateDate());
		return contact;
	}

	@Override
	public void deleteContact(int id) {
		String deleteSql = "delete from yolanda_contact where id = ?";
		JdbcTemplate.update(deleteSql, id);

	}

}
