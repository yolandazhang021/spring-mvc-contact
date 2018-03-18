package com.yolanda.form.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yolanda.form.model.Contact;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring-web-servlet.xml"})
public class ContactMapperTest extends AbstractJUnit4SpringContextTests{
	
	@Autowired
	private ContactMapper contactMapper;

	@Test
	public void testAddContact() {
		Contact contactReturn = contactMapper.select(7);
		assertNotNull(contactReturn);
		assertEquals("123456789", contactReturn.getPhoneNo());
	}
}
