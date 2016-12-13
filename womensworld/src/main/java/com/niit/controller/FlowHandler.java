package com.niit.controller;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import com.niit.womensworld_back.model.Userdetails;


@Component
public class FlowHandler {

	public Userdetails initFlow(){
		return new Userdetails();
	}
	
	public String validateDetails(Userdetails userdetails,MessageContext messageContext){
		String status = "success";
		
		if(userdetails.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getNumber().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"number").defaultText("Number cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		return status;
	}
}

