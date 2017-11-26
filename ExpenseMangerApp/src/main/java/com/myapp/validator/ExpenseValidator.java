package com.myapp.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.myapp.model.Expense;
import com.myapp.model.User;

@Component
public class ExpenseValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Expense.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "expense", "expense.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user", "expense.user.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "expense.category.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "date", "expense.date.required");
		Expense expense = (Expense) obj;

		if (expense.getExpense() < 0) {
			errors.rejectValue("expense", "expense.value", new Object[] { "Expense" }, "Expense can't be negative");

		}

		if (expense.getCategory().length() < 5 && expense.getCategory().length() > 30) {
			errors.rejectValue("category", "expense.category.length", new Object[] { "'Expense Category'" },
					"Expense Category length should be between 5 and 30");
		}

	}
}
