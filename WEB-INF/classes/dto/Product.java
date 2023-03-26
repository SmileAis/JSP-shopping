package dto;

import java.io.Serializable;

public class Product implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String productId;	//�� ��ȣ
	private String name;		// �� �̸�
	private Integer unitPrice;	//����
	private Integer saleUnitPrice;	// ���ΰ���
	private String description;	//����
	private String manufacturer;	//������
	private String category;	//�з�
	private long unitsInStock;	//��� ��
	private String filename;	// �̹������ϸ�
	private int quantity;		// ��ٱ��� ����
	
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
