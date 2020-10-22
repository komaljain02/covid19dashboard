package com.covid19India.model;

import java.util.Map;

public class IndiaVO {
	private String key_values;
	private TotalVO total_values;
	private Map<String,StateVO> state_wise;
	public String getKey_values() {
		return key_values;
	}
	public void setKey_values(String key_values) {
		this.key_values = key_values;
	}
	public TotalVO getTotal_values() {
		return total_values;
	}
	public void setTotal_values(TotalVO total_values) {
		this.total_values = total_values;
	}
	public Map<String, StateVO> getState_wise() {
		return state_wise;
	}
	public void setState_wise(Map<String, StateVO> state_wise) {
		this.state_wise = state_wise;
	}
}
