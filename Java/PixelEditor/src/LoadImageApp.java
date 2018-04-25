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
		for (int y = 0; y < height; y++) {
			for(int x = 0; x < width; x++) {
				counter++;
				int p = img.getRGB(x, y);
				int a = (p >> 24) & 0xff;
				int r = (p >> 16) & 0xff;
				int g = (p >> 8) & 0xff;
				int b = p & 0xff;
				
				// set default colors
//				if (r < 25 && g < 25 && b < 25) {
//					// set blacks
//					r = g = b = 0;
//					p = (a << 24) | (r << 16) | (g << 8) | b;
//					img.setRGB(x, y, p);
//				} else 
//				if ((r >= 100 && r <= 160) && 
//						(g >= 20 && g <= 40) &&
//						(b >= 100 && b <= 150)) {
//					// set purples
//					r = 147; 
//					g = 32; 
//					b = 142;
//					p = (a << 24) | (r << 16) | (g << 8) | b;
//					img.setRGB(x, y, p);
//				} else 
					if (
							(r >= 90 && r <= 200) && 
							(g >= 100 && g <= 240) && 
							(b >= 120 && b <= 240)
							) {
					// set light blues
					r = 0; 
					g = 0; 
					b = 0;
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
		LoadImageApp app = new LoadImageApp("./res/BlackFrost.jpg");
		app.getPixels();
		BufferedImage img = app.getImage();
		try {
			File f = new File("./res/NewFrost.jpg");
			ImageIO.write(img, "jpg", f);
		} catch (IOException e) {
			System.out.println(e);
		}
		System.out.println("Image Edit Successful: " + app.getCounter());
	};
}
