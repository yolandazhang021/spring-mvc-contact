package com.yolanda.form.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yolanda.form.dao.ContactDao;
import com.yolanda.form.mapper.ContactMapper;
import com.yolanda.form.model.Contact;

@Controller
public class HelloWorldController {
	
	@Autowired
	private ContactDao contactDao;
	
	@Autowired
	private ContactMapper contactMapper;

	@RequestMapping(value="/listContact", method=RequestMethod.GET)
	public String list(Model model) {
//		List<Contact> contacts = contactDao.getAllContacts();
		List<Contact> contacts = contactMapper.listContacts();
		model.addAttribute("contacts", contacts);
		return "list";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String deleteContact(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {
//		contactDao.deleteContact(id);
		contactMapper.deleteContact(id);
		redirectAttributes.addFlashAttribute("css", "success");
		redirectAttributes.addFlashAttribute("message", "Contact is successfully deleted!");
		return "redirect:/listContact";
	}
	
	@RequestMapping(value="/displayAddForm", method=RequestMethod.GET)
	public String displayAddForm(Model model) {
		Contact contact = new Contact();
		contact.setName("Yolanda");
		contact.setGender("Female");
		contact.setAddress("Jinkang Road");
		contact.setPhoneNo("123456789");
		contact.setCreatedBy("System");
		model.addAttribute("addIndicator", true);
		model.addAttribute("contactForm", contact);
		return "contactform";
	}
	
	@RequestMapping(value="/addContact", method=RequestMethod.POST)
	public String addContact(@ModelAttribute("contactForm") Contact contact, RedirectAttributes redirectAttributes) {
//		contactDao.addContact(contact);
		contactMapper.addContact(contact);
		redirectAttributes.addFlashAttribute("css", "success");
		redirectAttributes.addFlashAttribute("message", "Contact is successfully created!");
		return "redirect:/listContact";
	}
	
	@RequestMapping(value="/detail/{id}", method=RequestMethod.GET)
	public String detailContact(@PathVariable("id") int id, Model model) {
		Contact contact = contactMapper.select(id);
		model.addAttribute("contact", contact);
		return "detailcontact";
	}

	public void setContactDao(ContactDao contactDao) {
		this.contactDao = contactDao;
	}

	public void setContactMapper(ContactMapper contactMapper) {
		this.contactMapper = contactMapper;
	}
}
