package dto;

public class BillDetail {
	private int id;
	private int productId;
	private int quantity;
	private int price;
	private int billId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBillId() {
		return billId;
	}
	public void setBillId(int billId) {
		this.billId = billId;
	}
	public BillDetail(int id, int productId, int quantity, int price, int billId) {
		super();
		this.id = id;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.billId = billId;
	}
	public BillDetail(int productId, int quantity, int price, int billId) {
		super();
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.billId = billId;
	}
	public BillDetail() {
		super();
	}
	
	
}
