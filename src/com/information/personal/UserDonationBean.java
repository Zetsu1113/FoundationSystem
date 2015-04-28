package com.information.personal;

public class UserDonationBean {
	private int donationID;
	private double amount;
	private java.util.Date dateDonated;
	
	public int getDonationID() {
		return donationID;
	}
	public void setDonationID(int donationID) {
		this.donationID = donationID;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public java.util.Date getDateDonated() {
		return dateDonated;
	}
	public void setDateDonated(java.util.Date dateDonated) {
		this.dateDonated = dateDonated;
	}
}
