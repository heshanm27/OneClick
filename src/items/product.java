package items;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;

import javax.imageio.ImageIO;

import sun.misc.BASE64Decoder;

public class product {

	
	int ItemID;
	String ItemName;
	String ItemDetails;
	String Title;
	double Price;
	String Image1;
	String Image2;
	String Image3;
	int CID;
	
	
	public product(){
		
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


	public product(int itemID, String itemName, String itemDetails, double price, String image1, String image2,
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
	
	public static BufferedImage decodeToImage(String imageString) {
		 
        BufferedImage image = null;
        byte[] imageByte;
        try {
            BASE64Decoder decoder = new BASE64Decoder();
            imageByte = decoder.decodeBuffer(imageString);
            ByteArrayInputStream bis = new ByteArrayInputStream(imageByte);
            image = ImageIO.read(bis);
            bis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return image;
    }
	
	
}
