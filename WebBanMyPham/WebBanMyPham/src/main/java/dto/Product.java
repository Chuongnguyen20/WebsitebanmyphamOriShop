package dto;

public class Product {
	private int id;
	private String productName;
	private String imageName;
	private String description;
	private int originalPrice;
	private int salePrice;
	private int isNew;
	private int isSpecial;
	public Product(int id, String productName, String imageName, String description, int originalPrice, int salePrice,
			int isNew, int isSpecial) {
		super();
		this.id = id;
		this.productName = productName;
		this.imageName = imageName;
		this.description = description;
		this.originalPrice = originalPrice;
		this.salePrice = salePrice;
		this.isNew = isNew;
		this.isSpecial = isSpecial;
	}
	public Product(String productName, String imageName, String description, int originalPrice, int salePrice,
			int isNew, int isSpecial) {
		super();
		this.productName = productName;
		this.imageName = imageName;
		this.description = description;
		this.originalPrice = originalPrice;
		this.salePrice = salePrice;
		this.isNew = isNew;
		this.isSpecial = isSpecial;
	}
	public Product() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(int originalPrice) {
		this.originalPrice = originalPrice;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public int getIsNew() {
		return isNew;
	}
	public void setIsNew(int isNew) {
		this.isNew = isNew;
	}
	public int getIsSpecial() {
		return isSpecial;
	}
	public void setIsSpecial(int isSpecial) {
		this.isSpecial = isSpecial;
	}
	
	
}
