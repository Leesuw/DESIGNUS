package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;


import lombok.Getter;
import lombok.Setter;

@Alias("sponsor")
@Getter
@Setter

public class Sponsor {
	int ss_num;
	String ss_mbid_w;
	String ss_title;
	int ss_price;
	int ss_goalqty;
	String ss_contents;
	String ss_date;
	String end_data2;
	String ssi_imgSysName;
	String ssi_img;
	int sb_recomm;
	int sst_order;
	Double ss_curPercent;
}
