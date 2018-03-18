package com.yolanda.form.dao;

import java.util.List;

import com.yolanda.form.model.Contact;

public interface ContactDao {

	public List<Contact> getAllContacts();
	public Contact addContact(Contact contact);
	public void deleteContact(int id);
}
