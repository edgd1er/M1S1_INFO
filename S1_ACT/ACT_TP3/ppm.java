/**************************************************************************
*   vthierry@sophia.inria.fr, Copyright (C) 2001.  All rights reserved.   *
**************************************************************************/

package imp.v1.ima;


// Classes used to load/save from files/URL
import java.io.File;
import java.net.URL;
import java.io.IOException;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/** Define ppm files load/save */

class ppm {

  /** Pixel buffer */
  public int pixels[] = null;

  /** Image width */
  public int width = -1;

  /** Image height */
  public int height = -1;

  private int width_height;

  /** Load an image in PGM/PPM raw formats and return this
   * If loaded width, height and pixels are available in the public variables
   */

  public ppm load(String file) throws IOException {
    if (file.startsWith("file:")) file = file.substring(5);
    DataInputStream f = new DataInputStream(new FileInputStream(new File(file)));
    String h = readLine(f);
    if (h.equals("P6")) { // PPM Format
      set(f);
      byte bytes[] = new byte[3 * width_height];
      f.read(bytes);
      for(int ij = 0, k = 0; ij < width_height; ij++) {
	int red = intValue(bytes[k++]);
	int green = intValue(bytes[k++]);
	int blue = intValue(bytes[k++]);
	pixels[ij] = 0xFF000000 | blue | (green << 8) | (red << 16);
      }
      f.close();
    } else if (h.equals("P5")) { // PGM Format
      set(f);
      byte bytes[] = new byte[width_height];
      f.read(bytes);
      for(int ij = 0; ij < width_height; ij++) {
	int pixel = intValue(bytes[ij]);
	pixels[ij] = 0xFF000000 | pixel | (pixel << 8) | (pixel << 16);
      }
      f.close();
    } else {
      f.close();
      throw new IOException("Bad file format: not a PPM/PGM raw format");
    }
    return this;
  }
  private void set(DataInputStream f) throws IOException {
    String l;
    while((l = readLine(f)).startsWith("#"));
    try {
      width = new Integer(l.substring(0,l.indexOf(' '))).intValue();
      height = new Integer(l.substring(l.indexOf(' ')+1)).intValue();
      width_height = width * height;
      pixels = new int[width_height];
    } catch(NumberFormatException e) {
      throw new IOException("Bad file sizes format");
    }
    if (!readLine(f).equals("255"))
      throw new IOException("Bad PPM/PGM file format");
  }
  private static int intValue(byte b) {	return (b < 0) ? (256 + b) : b; }
  private static String readLine(DataInputStream f) throws IOException {
    StringBuffer s = new StringBuffer();
    try {
      char c;
      while((c = (char) f.readByte()) != '\n') s.append(c);
    } catch(EOFException e) { }
    return s.toString();
  }

  /** Save in the given file (in PPM format) and return this */

  public static void save(String filename, 
			  int width, int height, int pixels[]) throws IOException {
    if (!filename.endsWith(".ppm")) filename += ".ppm";
    DataOutputStream f = new DataOutputStream(new FileOutputStream(new File(filename)));
    f.writeBytes("P6\n"); 
    f.writeBytes("# Written by duck.ima.ImageUtil() \n");
    f.writeBytes(width + " " + height + "\n");
    f.writeBytes("255\n");
    int width_height = width * height;
    byte bytes[] = new byte[3 * width_height];
    int k = 0;
    for(int ij = 0; ij < width_height; ij++) {
      bytes[k++] = (byte) ((pixels[ij] >> 16) & 0xFF);
      bytes[k++] = (byte) ((pixels[ij] >> 8) & 0xFF);
      bytes[k++] = (byte) (pixels[ij] & 0xFF);
    }
    f.write(bytes);
    f.writeBytes("\n");
    f.close();
  }
}
