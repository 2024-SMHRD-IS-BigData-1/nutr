package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
@NoArgsConstructor



public class Member {

	@NonNull private String mem_id;
	@NonNull private String mem_pw;
	@NonNull private String mem_name;
	@NonNull private double mem_height;
	@NonNull private double mem_weight;
	@NonNull private int mem_gender;
	@NonNull private String mem_birthdate;
	
	@NonNull private int vegan;
	@NonNull private int health;
	@NonNull private int allergy;
	@NonNull private int gout;
	
	@NonNull private int diet;
	@NonNull private int diabetes;
	@NonNull private int lactose;
	@NonNull private int hyperlipidemia;
	
	private String join_at;
	
	
	//로그인 생성자
	public Member(String mem_id, String mem_pw) {	
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}

	
	
	
	
	
	
	
}
