package com.information.personal;

public class ADBean { // Bean used for transactions related to account details
	private java.util.Date dateJoined;
	private int donationsCount;
	private double totalDonations;
	
	public java.util.Date getDateJoined() {
		return dateJoined;
	}
	public void setDateJoined(java.util.Date dateJoined) {
		this.dateJoined = dateJoined;
	}
	public int getDonationsCount() {
		return donationsCount;
	}
	public void setDonationsCount(int donationsCount) {
		this.donationsCount = donationsCount;
	}
	public double getTotalDonations() {
		return totalDonations;
	}
	public void setTotalDonations(double totalDonations) {
		this.totalDonations = totalDonations;
	}
}
