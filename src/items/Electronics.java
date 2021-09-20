package items;

public class Electronics {

	
	int ItemID;
	String ItemName;
	String ItemDetails;
	String Title;
	double Price;
	String Image1;
	String Image2;
	String Image3;
	int CID;
	
	
	public Electronics(){
		
	}
	public int getCID() {
		return CID;
	}

	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public void setCID(int cID) {
		CID = cID;
	}


	public int getItemID() {
		return ItemID;
	}


	public void setItemID(int itemID) {
		ItemID = itemID;
	}


	public String getItemName() {
		return ItemName;
	}


	public void setItemName(String itemName) {
		ItemName = itemName;
	}


	public String getItemDetails() {
		return ItemDetails;
	}


	public void setItemDetails(String itemDetails) {
		ItemDetails = itemDetails;
	}


	public double getPrice() {
		return Price;
	}


	public void setPrice(double price) {
		Price = price;
	}


	public String getImage1() {
		return Image1;
	}


	public void setImage1(String image1) {
		Image1 = image1;
	}


	public String getImage2() {
		return Image2;
	}


	public void setImage2(String image2) {
		Image2 = image2;
	}


	public String getImage3() {
		return Image3;
	}


	public void setImage3(String image3) {
		Image3 = image3;
	}


	public Electronics(int itemID, String itemName, String itemDetails, double price, String image1, String image2,
			String image3) {
		super();
		ItemID = itemID;
		ItemName = itemName;
		ItemDetails = itemDetails;
		Price = price;
		Image1 = image1;
		Image2 = image2;
		Image3 = image3;
	}
	
	
	
}
