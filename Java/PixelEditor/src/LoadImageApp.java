import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class LoadImageApp {
	private BufferedImage img;
	private int width;
	private int height;
	private long counter = 0;
	
	public LoadImageApp(String fileName) {
		try {
			img = ImageIO.read(new File(fileName));
			height = img.getHeight();
			width = img.getWidth();
		} catch (IOException e) {
			System.out.println(e);
		}
	}
	
	public void getPixels() {
		int midWidth = width >> 1;
		
		for (int y = 0; y < height; y++) {
			for(int x = midWidth - 100; x < midWidth + 100; x++) {
				int p = img.getRGB(x, y);
				int a = (p >> 24) & 0xff;
				int r = (p >> 16) & 0xff;
				int g = (p >> 8) & 0xff;
				int b = p & 0xff;
				
				if (x < midWidth) {
					r = g = b = 61;
					p = (a << 24) | (r << 16) | (g << 8) | b;
					img.setRGB(x, y, p);
				}
				
				if (x > midWidth) {
					r = 217; 
					g = 131;
					b = 59;
					p = (a << 24) | (r << 16) | (g << 8) | b;
					img.setRGB(x, y, p);
				}
			}
		}
	}
	
	public long getCounter() {
		return counter;
	}
	
	public BufferedImage getImage() {
		return img;
	}
	
	public static void main(String[] args) {
		LoadImageApp app = new LoadImageApp("./res/CharizardXY.png");
		app.getPixels();
		BufferedImage img = app.getImage();
		try {
			File f = new File("./res/NewCharizard.png");
			ImageIO.write(img, "png", f);
		} catch (IOException e) {
			System.out.println(e);
		}
		System.out.println("Image Edit Successful: " + app.getCounter());
	};
}
