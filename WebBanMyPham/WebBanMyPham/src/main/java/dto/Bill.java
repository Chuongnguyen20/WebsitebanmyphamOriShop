package dto;

import java.util.Date;

public class Bill {
	private int id;
	private int userId;
	private int totalAmount;
	private Date orderDate;
	private int shippingFee;
	private int status;
	public Bill(int id, int userId, int totalAmount, Date orderDate, int shippingFee, int status) {
		super();
		this.id = id;
		this.userId = userId;
		this.totalAmount = totalAmount;
		this.orderDate = orderDate;
		this.shippingFee = shippingFee;
		this.status = status;
	}
	public Bill(int userId, int totalAmount, Date orderDate, int shippingFee, int status) {
		super();
		this.userId = userId;
		this.totalAmount = totalAmount;
		this.orderDate = orderDate;
		this.shippingFee = shippingFee;
		this.status = status;
	}
	public Bill() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getShippingFee() {
		return shippingFee;
	}
	public void setShippingFee(int shippingFee) {
		this.shippingFee = shippingFee;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
