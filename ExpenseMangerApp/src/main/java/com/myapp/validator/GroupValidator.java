package com.myapp.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.myapp.model.Group;

@Component
public class GroupValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Group.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "groupName", "groupName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "numMembers", "numMembers.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "users", "users.in.groups.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "groupExpenses", "groupExpenses.required");

	}

}
