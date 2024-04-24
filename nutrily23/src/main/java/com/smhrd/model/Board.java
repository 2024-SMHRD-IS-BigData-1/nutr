package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Getter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor

public class Board {

	private int b_idx;
	
	@NonNull private String b_category;
	@NonNull private String b_title;
	@NonNull private String b_content;
	@NonNull private String b_file;
	
	private String b_date;
	private String b_view;
	private String b_like;
	
	private String mem_id;
	
	@NonNull private String b_writer;
	
	
	
	
	
	
	
	
	
	
	
}
