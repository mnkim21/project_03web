package com.team6.cinema.store;


/**
 * 스토어 제품 DTO 페이지
 * @author 차소현
 *
 */
//보통 오라클 테이블 1개당 DTO 1개(이상)를 만든다.
public class StoreDTO {

	private String itemSeq;
	private String itemName;
	private int itemPrice;
	private int itemCount;
	private String itemClass;
	private String itemImage;
	
	
	public String getItemSeq() {
		return itemSeq;
	}
	public String getItemName() {
		return itemName;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public int getItemCount() {
		return itemCount;
	}
	public String getItemClass() {
		return itemClass;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemSeq(String itemSeq) {
		this.itemSeq = itemSeq;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}
	public void setItemClass(String itemClass) {
		this.itemClass = itemClass;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	
	
	
	
	
}
