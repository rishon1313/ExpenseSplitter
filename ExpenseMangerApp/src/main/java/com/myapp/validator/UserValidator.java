package com.myapp.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.myapp.model.User;
@SessionAttributes( { "user", "group", "expense" })
@Component
public class UserValidator implements Validator {

//	private Pattern pattern;
//	 private Matcher matcher;
//	String MOBILE_PATTERN = "[0-9]{10}";
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "username.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "usermobileNo.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "userpassword.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pan", "userpan.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "budget", "budget.required");
	
		User user = (User) obj;
		 String mobileno=String.valueOf(user.getMobileNo());
		 String panno=String.valueOf(user.getPan());
		

		if (mobileno.length() !=10) {
		errors.rejectValue("mobileNo", "mobileno.length", new Object[] { "Mobile No" },
				"Mobile No should be of length 10");

		}
		if (panno.length() !=10) {
			errors.rejectValue("pan", "pan.length", new Object[] { "PAN" },
					"Pan no should be of length 10");

			}


		/*if ((user.getName()).length() < 5 ) {
			errors.rejectValue("name", "username.length", new Object[] { "'UserName'" },
					"Username should be between 5 and 30");
		}*/
		if (user.getPassword().length() < 5 ) {
			errors.rejectValue("password", "userpassword.length", new Object[] { "'UserPassword'" },
					"UserPassword should be between 5 and 30");
		}
		 /*if (!(user.getMobileNo() != null)) {
			   pattern = Pattern.compile(MOBILE_PATTERN);
			   String mobileno=String.valueOf(user.getMobileNo());
			   matcher = pattern.matcher(mobileno);
			   if (!matcher.matches()) {
			    errors.rejectValue("phone", "phone.incorrect",
			      "Enter a correct phone number");
			   }
			  }*/

	}

}
