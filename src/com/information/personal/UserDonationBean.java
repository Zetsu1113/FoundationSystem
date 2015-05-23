package com.information.personal;

public class UserDonationBean { // Bean used for transactions concerning total user donations since creation of account
	private int donationID;
	private double amount;
	private String username;
	private java.util.Date dateDonated;
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
