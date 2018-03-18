package com.yolanda.form.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yolanda.form.model.Contact;

@Repository
public interface ContactMapper {

	@Select("SELECT id as id, name as name, address as address, phoneNo as phoneNo, gender as gender, "
			+ "address as address, createBy as createdBy, createDate as createdDate, updateBy as updateBy, updateDate as updateDate"
			+ " FROM yolanda_contact where id = #{id}")
//	@Select("Select * from yolanda_contact where id = #{id}")
	public Contact select(int id);
	
	@Delete("DELETE FROM yolanda_contact where id = #{id}")
	public void deleteContact(int id);
	
	@Insert("insert into yolanda_contact" + 
			"(name, address, phoneNO, gender, createBy, createDate, updateBy, updateDate)" + 
			"values (#{name}, #{address}, #{phoneNo}, #{gender}, #{createdBy},#{createdDate}, #{updateBy}, #{updateDate})")
	public void addContact(Contact contact);
	
	@Select("SELECT id as id, name as name, address as address, phoneNo as phoneNo, gender as gender, "
			+ "address as address, createBy as createdBy, createDate as createdDate, updateBy as updateBy, updateDate as updateDate"
			+ " FROM yolanda_contact")
	public List<Contact> listContacts();
}
