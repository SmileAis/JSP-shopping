package dto;

import java.io.Serializable;

public class Product implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String productId;	//옷 번호
	private String name;		// 옷 이름
	private Integer unitPrice;	//가격
	private Integer saleUnitPrice;	// 할인가격
	private String description;	//설명
	private String manufacturer;	//제조사
	private String category;	//분류
	private long unitsInStock;	//재고 수
	private String filename;	// 이미지파일명
	private int quantity;		// 장바구니 수량
	
	public Product() {
		super();
	}
	
	public Product(String productId, String name, Integer unitPrice) {
		super();
		this.productId = productId;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public Integer getSaleUnitPrice() {
		return saleUnitPrice;
	}

	public void setSaleUnitPrice(Integer saleUnitPrice) {
		this.saleUnitPrice = saleUnitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	
	public String getFilename() {
		return filename;
		
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
