package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product cloth1 = new Product("T0001", "�� ����Ƽ-���", 10000);
		cloth1.setDescription("�ڿ��� ����");
		cloth1.setSaleUnitPrice(8000);
		cloth1.setCategory("Shirt");
		cloth1.setManufacturer("SW mall");
		cloth1.setUnitsInStock(1000);
		cloth1.setFilename("T0001.JPG");

		
		Product cloth2 = new Product("T0002", "üũ ����-��/��", 15000);
		cloth2.setDescription("�ڿ��� ����");
		cloth2.setSaleUnitPrice(12000);
		cloth2.setCategory("Shirt");
		cloth2.setManufacturer("SW mall");
		cloth2.setUnitsInStock(1000);
		cloth2.setFilename("T0002.JPG");

		
		Product cloth3 = new Product("T0003", "���̼���-���", 20000);
		cloth3.setDescription("����� ��� ���̼��� �Դϴ�.");
		cloth3.setSaleUnitPrice(-1);
		cloth3.setCategory("Shirt");
		cloth3.setManufacturer("SW mall");
		cloth3.setUnitsInStock(1000);
		cloth3.setFilename("T0003.JPG");

		Product cap1 = new Product("C0001", "��ĸ-����", 15000);
		cap1.setDescription("����� ���� ���� �����Դϴ�.");
		cap1.setSaleUnitPrice(-1);
		cap1.setCategory("Cap");
		cap1.setManufacturer("SW-Cap");
		cap1.setUnitsInStock(1000);
		cap1.setFilename("C0001.JPG");
		
		Product cap2 = new Product("C0002", "��ĸ-���", 15000);
		cap2.setDescription("�ڿ��� ����");
		cap2.setSaleUnitPrice(10000);
		cap2.setCategory("Cap");
		cap2.setManufacturer("SW-Cap");
		cap2.setUnitsInStock(1000);
		cap2.setFilename("C0002.JPG");
		
		Product cap3 = new Product("C0003", "��ĸ-�Ķ�", 15000);
		cap3.setDescription("�ڿ��� ����");
		cap3.setSaleUnitPrice(10000);
		cap3.setCategory("Cap");
		cap3.setManufacturer("SW-Cap");
		cap3.setUnitsInStock(1000);
		cap3.setFilename("C0003.jpg");
		
		Product bag1 = new Product("B0001", "ũ�ν���", 25000);
		bag1.setDescription("��� ũ�ν��� �Դϴ�.");
		bag1.setSaleUnitPrice(-1);
		bag1.setCategory("Bag");
		bag1.setManufacturer("SW-Bag");
		bag1.setUnitsInStock(1000);
		bag1.setFilename("B0001.JPG");
		
		Product bag2 = new Product("B0002", "��� ����", 40000);
		bag2.setDescription("��� ���� �Դϴ�.");
		bag2.setSaleUnitPrice(-1);
		bag2.setCategory("Bag");
		bag2.setManufacturer("SW-Bag");
		bag2.setUnitsInStock(1000);
		bag2.setFilename("B0002.JPG");
		
		Product bag3 = new Product("B0003", "���� ����", 40000);
		bag3.setDescription("���� ���� �Դϴ�.");
		bag3.setSaleUnitPrice(-1);
		bag3.setCategory("Bag");
		bag3.setManufacturer("SW-Bag");
		bag3.setUnitsInStock(1000);
		bag3.setFilename("B0003.jpg");
		
		listOfProducts.add(cloth1);
		listOfProducts.add(cloth2);
		listOfProducts.add(cloth3);
		listOfProducts.add(cap1);
		listOfProducts.add(cap2);
		listOfProducts.add(cap3);
		listOfProducts.add(bag1);
		listOfProducts.add(bag2);
		listOfProducts.add(bag3);


	}
	
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			
			if(product != null & product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
				
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
}
