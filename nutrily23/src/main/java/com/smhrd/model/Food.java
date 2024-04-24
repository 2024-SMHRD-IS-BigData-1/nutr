package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor
@RequiredArgsConstructor


public class Food {

	private int food_idx;
	@NonNull private String food_name;
	private int calorie;
	private double carbohydrate;
	private double protein;
	private double fat;
	private double sodium;
	private double sugar;
	private double food_servings;
	

	
	
	
	
	
	
	
	
	
	
	
	
	
}
