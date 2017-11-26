package com.myapp.web;


import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.myapp.exceptions.GroupLimitExceededException;
import com.myapp.exceptions.IdNotFoundException;
import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Group;
import com.myapp.model.GroupExpenses;
import com.myapp.model.Transaction;
import com.myapp.model.User;
import com.myapp.model.UserGroups;
import com.myapp.service.GroupService;
import com.myapp.model.Expense;
import com.myapp.service.UserService;

@SessionAttributes({ "group", "user", "expense","number" })
@Controller
public class GroupController {
	@Autowired
	private GroupService groupService;
	@Autowired
	UserService userService;
	/*@Autowired
	@Qualifier("groupValidator")
	private Validator validator;*/

	/*@InitBinder
	public void setInitbinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}*/

	@RequestMapping("/createGroup")
	public String createGroup(@ModelAttribute("user")User user,ModelMap map) throws PhoneNumberNotFoundException {		
		System.out.println("create group starts");
		map.addAttribute("user", user);
		System.out.println(user);
		System.out.println("creatr grup ends");
		Group group=new Group();
		map.addAttribute("group", group);
		return "createGroup";		
	}

	@RequestMapping("/viewGroups")
	public String viewGroups(@ModelAttribute("user")User user,BindingResult result, ModelMap model) {
		if(result.hasErrors()){
			return "groupExpenses";
		}
		System.out.println("inside vie groups controller");
		System.out.println(user);
		model.addAttribute("user", user);
		List<Group> groups = groupService.viewGroup(user.getMobileNo());
		System.out.println(groups);
		model.addAttribute("groups", groups);
		return "viewGroups";
	}
	@RequestMapping("/welcomeGroup")
	public String welcome(ModelMap map) {
		User user = new User();
		map.addAttribute("user", user);
		return "welcome";
	}
	@RequestMapping("/groupExpensesGroup")
	public String groupExpenses(@ModelAttribute("user")User user,@ModelAttribute("group")Group group,BindingResult result, ModelMap map) {
		System.out.println("inside groupcretaeion");
		System.out.println(user);
		System.out.println(group);
		if(result.hasErrors()){
			return "groupExpenses";
		}
		try {
		user= userService.getUserDetails(user.getMobileNo());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		UserGroups userGroups = new UserGroups();
		userGroups.setUser(user);
		userGroups.setGroup(group);
		userGroups.setUserDues(0D);
		group.setNumMembers(1);
		
		try {
			groupService.createGroup(group, userGroups);
		} catch (PhoneNumberNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "groupExpenses";
	}
	@RequestMapping("/groupHome")
	public String groupHome(@ModelAttribute("user")User user,@RequestParam("gr")Integer groupId,BindingResult result,ModelMap map) {
		if(result.hasErrors()){
			return "viewGroups";
		}
		//groupService.settleInGroup(1l, 2l, 52, 250);
		System.out.println("Inisde group home controller");
		System.out.println(user);
		System.out.println(groupId);
		Expense expense=new Expense();
		map.addAttribute("expense",expense);
		map.addAttribute("user",user);
		List<GroupExpenses>groupExpensesList=groupService.viewGroupExpenses(groupId);
		System.out.println(groupExpensesList);
		try {
			Group group=groupService.getGroupbyId(groupId);
			System.out.println("prinitnig in group home controller setting groups sesssion");
			map.addAttribute("group", group);
			List<UserGroups>userGroups=groupService.getGroupDues(groupId);
			map.addAttribute("userDues",userGroups);
		} catch (IdNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.addAttribute("groupExpensesList", groupExpensesList);
		return "groupHome";
	}
	/*@RequestMapping("/addGroupMember")
	public String groupHome1(@ModelAttribute("userGroups") UserGroups userGroups, ModelMap model)
			throws PhoneNumberNotFoundException, GroupLimitExceededException {
		if (groupService.addMember(userGroups)) {
			return "groupHome";
		} else
			return "addGroupMember";
	}*/
	@RequestMapping("/addGroupMember")
	public String addMember(@ModelAttribute("user")User user,@ModelAttribute("group")Group group,BindingResult result,ModelMap map){
		if(result.hasErrors()){
			return "expenses";
		}
		System.out.println(group.getGroupId());
		 group=groupService.viewGroupbyId(group.getGroupId());
		 System.out.println("after getting froup by id");
		System.out.println(group);
		map.addAttribute("group",group);
		//System.out.println("Group ---- "+group);
		//map.addAttribute("group",group);
		return "addGroupMember";
	}
	
	@RequestMapping("addMember")
	public String addMemberToGroup(@ModelAttribute("group")Group group,@RequestParam("mobileNo")Long mobileNo,BindingResult result,ModelMap map){
		System.out.println("in addmmeber group prinitni");
		System.out.println(group);
		User user1;
		try {
			user1 = userService.getUserDetails(mobileNo);
			System.out.println(user1);
			UserGroups userGroups=new UserGroups();
			userGroups.setGroup(group);
			userGroups.setUser(user1);
			userGroups.setUserDues(0d);
			List<GroupExpenses>groupExpensesList=groupService.viewGroupExpenses(group.getGroupId());
			System.out.println(groupExpensesList);
			map.addAttribute("groupExpensesList", groupExpensesList);
			groupService.addMember(userGroups);
			List<UserGroups>userGroups1=groupService.getGroupDues(group.getGroupId());
			System.out.println("inside add member ");
			System.out.println(userGroups1);
			map.addAttribute("userDues",userGroups1);
			return "groupHome";
		} catch (PhoneNumberNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (GroupLimitExceededException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "groupHome";
	}
	
	@RequestMapping("/addGExpense")
	public String addGExpense(@ModelAttribute("user")User user,@ModelAttribute("group")Group group,BindingResult result, ModelMap model) {
		if(result.hasErrors()){
			return "groupExpenses";
		}
		GroupExpenses groupExpenses=new GroupExpenses();
		model.addAttribute("groupExpenses", groupExpenses);
	
		System.out.println("inside add GE expense");
		System.out.println("printing group in addgroupexpense" +group);
		List<String> category=new ArrayList<String>();
		category.add("Food");
		category.add("Travel");
		category.add("GirlFriend");
		category.add("Entertainment");
		category.add("Booze");
		model.addAttribute("category", category );
		System.out.println(user);
		return "addGroupExpense";
	}
@RequestMapping("/groupExpenseAdd")
public String addGroupExpense(@ModelAttribute("group")Group group,@RequestParam("category")String category,@RequestParam("date")String date,@RequestParam("expense")Double expense,@ModelAttribute("user")User user, BindingResult result,ModelMap model) {
	System.out.println("--------------------------");
	System.out.println("printing user");
	System.out.println(user);
	System.out.println("--------------------------");
		if(result.hasErrors()){
			return "groupExpenses";
		}
		Integer groupId=group.getGroupId();
		System.out.println("--------------------------");
		System.out.println("prinitng group inside addgroupexpense"+group);
		System.out.println("--------------------------");
		GroupExpenses groupExpenses=new GroupExpenses();
		System.out.println(date);
		System.out.println(groupId);
		System.out.println("inside add group expense");
		 group=groupService.viewGroupbyId(groupId);
		System.out.println(group);
		groupExpenses.setGroup(group);
		groupExpenses.setUser(user);
		groupExpenses.setCategory(category);
		groupExpenses.setExpense(expense);
		System.out.println(groupExpenses);
		groupService.addExpense(groupExpenses);
		List<GroupExpenses>groupExpensesList=groupService.viewGroupExpenses(group.getGroupId());
		System.out.println(groupExpensesList);
		model.addAttribute("groupExpensesList", groupExpensesList);
		List<UserGroups> userGroups1=null;
		try {
			userGroups1 = groupService.getGroupDues(group.getGroupId());
		} catch (IdNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("inside add member ");
		System.out.println(userGroups1);
		model.addAttribute("userDues",userGroups1);
		return "groupHome";
}

@RequestMapping("/settleExpense")
public String settleExpensePage(){
	return "settleExpenses";
}
@RequestMapping("/settleDues")
public String settleDues(ModelMap map,@ModelAttribute("group")Group group,@ModelAttribute("user")User user,@RequestParam("receiverText")Long reciever,@RequestParam("amountText")Double amount,BindingResult result){
	if(result.hasErrors()){
		return "settleExpenses";
	}
	boolean flag=groupService.settleInGroup(reciever, user.getMobileNo(), group.getGroupId(), amount);
	if(flag){
		List<UserGroups> userGroups;
		try {
			userGroups = groupService.getGroupDues(group.getGroupId());
			map.addAttribute("userDues",userGroups);
			List<GroupExpenses>groupExpensesList=groupService.viewGroupExpenses(group.getGroupId());
			System.out.println(groupExpensesList);
			map.addAttribute("groupExpensesList", groupExpensesList);
			
		} catch (IdNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "groupHome";
	}else{
		return "settleExpenses";
	}
}

@RequestMapping("/payhome")
public String initialfunctions(ModelMap map,@RequestParam("phone") String phone,@RequestParam("password") String password){
	String bookurl = "http://10.150.222.67:8080/PaymentApp/logincheck/"+phone+"/"+password;
	
	RestTemplate template = new RestTemplate();
	User loginuser=template.getForObject(bookurl, User.class);
	map.addAttribute("number",phone);
		return "payHome";
}
@RequestMapping("/payhome1")
public String finalfunctions(){
		return "payHome";
}
@RequestMapping("/loginpay")
public String loginpayfun(@ModelAttribute("user") User user,ModelMap map){
	map.addAttribute("userno",user.getMobileNo());
return "login";
}
@RequestMapping("/paytosomeone")
public String initialpage(@ModelAttribute("number") String number,ModelMap map){
	Transaction t=new Transaction();
	map.addAttribute("transaction",t);
		return "temp";
}

@RequestMapping("/sent")
public String sentFunction(@ModelAttribute("number") String number,ModelMap map){
	String bookurl = "http://10.150.222.67:8080/PaymentApp/sentservice/"+number;
	RestTemplate template = new RestTemplate();
	List<Transaction> sent = template.getForObject(bookurl, List.class);
	System.out.println(sent);
	map.addAttribute("sentlist",sent);
		return "showlist";
}
@RequestMapping("/received")
public String receivedFunction(@ModelAttribute("number") String number,ModelMap map){
	String bookurl = "http://10.150.222.67:8080/PaymentApp/receiveservice/"+number;
	RestTemplate template = new RestTemplate();
	List<Transaction> receive = template.getForObject(bookurl, List.class);
	System.out.println(receive);
	map.addAttribute("reclist",receive);
		return "showreclist";
}
@RequestMapping("/payment")
public String payFunction(@ModelAttribute("transaction")Transaction transaction,ModelMap map){
	System.out.println("in expense pay controller");
	String bookurl = "http://10.150.222.67:8080/PaymentApp/payservice/"+transaction.getSender()+"/"+transaction.getReceiver()+"/"+transaction.getAmount();
	RestTemplate template = new RestTemplate();
	Integer transId=template.getForObject(bookurl, Integer.class);
	map.addAttribute("transId",transId);
		return "payresult";
}

@RequestMapping("/start1")
public String pay(){
	String bookurl = "http://10.150.222.67:8080/PaymentApp/pay";
		return "showlist";
}

@RequestMapping("/backfrompay")
public String backFromPaying() {
	return "groupExpenses";
}	
@RequestMapping("/homeGroup")
public String homeGroup(@ModelAttribute("group")Group group,ModelMap map){
	List<GroupExpenses>groupExpensesList=groupService.viewGroupExpenses(group.getGroupId());
	System.out.println(groupExpensesList);
	map.addAttribute("groupExpensesList", groupExpensesList);
	List<UserGroups> userGroups;
	try {
		userGroups = groupService.getGroupDues(group.getGroupId());
		map.addAttribute("userDues",userGroups);
	} catch (IdNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return "groupHome";
}

	}
