package com.covid19India.model;

public class DistirctVO {
	private String notes;
	private int confirmed;
	private int active;
	private int deceased;
	private int recovered;
	private Delta delta;

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getConfirmed() {
		return confirmed;
	}

	public void setConfirmed(int confirmed) {
		this.confirmed = confirmed;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getDeceased() {
		return deceased;
	}

	public void setDeceased(int deceased) {
		this.deceased = deceased;
	}

	public int getRecovered() {
		return recovered;
	}

	public void setRecovered(int recovered) {
		this.recovered = recovered;
	}

	public Delta getDelta() {
		return delta;
	}

	public void setDelta(Delta delta) {
		this.delta = delta;
	}

}
