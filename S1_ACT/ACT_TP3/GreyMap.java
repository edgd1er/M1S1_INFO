package org.sc3d.apt.image;

import java.awt.image.*;
import java.io.*;
import org.sc3d.apt.awt.v2.ImageCanvas;

/** Represents a rectangular grid of pixels, each of which is somewhere between black (0) and white (255). */
public class GreyMap {
  /** Constructs a GreyMap.
   * @param width the width in pixels.
   * @param height the height in pixels.
   * @param pixels an array of length 'width*height' giving the grey level of the pixels in left-to-right, top-to-bottom order. The array is not copied, so you should not modify it hereafter.
   */
  public GreyMap(int width, int height, byte[] pixels) {
    this.width = width; this.height = height; this.pixels = pixels;
  }
  
  /** Constructs a GreyMap by reading a PGM image from 'in'.
   * <p>PGM stands for Portable Grey Map, and is one of the file-formats manipulated by the 'pnmtools' programs (the others being PBM and PPM). It is designed to be a "lowest common denominator" representation of greyscale images. It is rarely used for storing or transmitting greyscale images, because it is both too simple and not efficient enough, but it is an excellent format for representing intermediate results in image processing, because it is very easy to write programs that can understand it. Plenty of tools are available for converting PGM files to and from other formats, such as JPEG and PNG. This class also provides a method for writing a PGM image.
   * <p>The definition of the PGM format comes with the 'pnmtools' programs, and the following information is copied from it. A PGM file consists of the concatenation of one or more PGM images. A PGM image consists of the two bytes "P5", then one or more white-space characters, then the image width, then one or more white-space characters, then the image height, then one or more white-space characters, then the image depth, then exactly one white-space character, then the raw image data. The four allowed white-space characters are space, tab, line-feed and carriage-return. The width, height and depth are represented in decimal. ASCII is used throughout (one byte per character). The width and height are measured in pixels, and the depth is the number of grey levels minus one, and can be at most 65535. The raw image data consists of one byte per pixel if the depth is less than 256, or two bytes per pixel otherwise. When using two bytes per pixel, the most significant byte comes first. The grey levels are numbered from 0 (black) to the depth (white). The pixels are listed in left-to-right, top-to-bottom order.
   * <p>This constructor only reads one PGM image. To read a whole PGM file, call this constructor repeatedly. This constructor converts the image it reads to a depth of '255' by multiplying all the pixel values by a constant (and rounding down).
   * @throws IOException if 'in' does, or if the bytes read from 'in' are not in PGM format. In both cases, some bytes may have been read from 'in'.
   */
  public GreyMap(InputStream in) throws IOException {
    if (in.read()!='P' || in.read()!='5')
      throw new IOException("Magic P5 is missing");
    if (!isWhiteSpace(in.read())) throw new IOException("White-space missing");
    this.width = readDecimal(in);
    this.height = readDecimal(in);
    this.pixels = new byte[this.width*this.height];
    final int depth = readDecimal(in);
    for (int i=0; i<this.pixels.length; i++) {
      int v = 0xFF&in.read();
      if (depth>=256) v = 256*v + (0xFF&in.read());
      this.pixels[i] = (byte)(255*v/depth);
    }
  }
  
  /* New API. */
  
  /** The width of this GreyMap in pixels. */
  public final int width;
  
  /** The height of this GreyMap in pixels. */
  public final int height;
  
  /** Returns the grey level of the pixel with coordinates 'x' and 'y'. If the pixel is not within the grid, the level of the nearest pixel within the grid is returned instead. */
  public int get(int x, int y) {
    if (x<0) x = 0; else if (x>=this.width) x = this.width-1;
    if (y<0) y = 0; else if (y>=this.height) y = this.height-1;
    return 0xFF & this.pixels[x+this.width*y];
  }
  
  /** Returns the grey levels of all the pixels in a fresh array of length 'width*height'. */
  public byte[] getPixels() { return (byte[])this.pixels.clone(); }
  
  /** Returns a GreyMap representing a half-size version of this GreyMap. Each pixel of the returned GreyMap is the average of a 2x2 grid of pixels of this GreyMap. If the width and/or height are odd, then the half-size width and/or height are rounded up. */
  public GreyMap shrink() {
    final int w = (this.width+1) / 2, h = (this.height+1) / 2;
    final byte[] ps = new byte[w*h];
    for (int y=0; y<h; y++) for (int x=0; x<w; x++) {
      ps[x+w*y] = average(
        this.get(2*x+0, 2*y+0), this.get(2*x+1, 2*y+0),
        this.get(2*x+0, 2*y+1), this.get(2*x+1, 2*y+1)
      );
    }
    return new GreyMap(w, h, ps);
  }
  
  /** Returns a GreyMap formed by replacing each pixel of this GreyMap by the average of its four neighbours. */
  public GreyMap blur() {
    final int w = this.width, h = this.height;
    final byte[] ps = new byte[w*h];
    for (int y=0; y<h; y++) for (int x=0; x<w; x++) {
      ps[x+w*y] = average(
        this.get(x-1, y), this.get(x+1, y),
        this.get(x, y-1), this.get(x, y+1)
      );
    }
    return new GreyMap(w, h, ps);
  }
  
  /** Converts this GreyMap into a BufferedImage of type 'TYPE_BYTE_GRAY'. */
  public BufferedImage toImage() {
    final BufferedImage ans = new BufferedImage(
      this.width, this.height,
      BufferedImage.TYPE_BYTE_GRAY
    );
    final byte[] ansPixels =
      ((DataBufferByte)ans.getRaster().getDataBuffer()).getData();
    System.arraycopy(this.pixels, 0, ansPixels, 0, this.width*this.height);
    return ans;
  }

  /** A short-hand for 'new ImageCanvas(width, height, toImage(), title)'. */
  public void display(String title) {
    new ImageCanvas(this.width, this.height, this.toImage(), title);
  }
  
  
  /** Writes this GreyMap to 'out' as a single PGM image. The image will have a depth of '255'. */
  public void writePGM(OutputStream out) throws IOException {
    out.write('P'); out.write('5'); out.write(' ');
    writeDecimal(out, this.width);
    writeDecimal(out, this.height);
    writeDecimal(out, 255);
    for (int i=0; i<this.pixels.length; i++) out.write(0xFF&this.pixels[i]);
    out.flush();
  }
  
  /* Private. */
  
  /** Skips zero or more white-space characters, and comments, then reads one or more digits, then one white-space character.
   * @return the number formed from the digits.
   * @throws IOException if anything else happens.
   */
  private static int readDecimal(InputStream in) throws IOException {
    int c = in.read();
    while (isWhiteSpace(c)) c = in.read();
    while (c=='#') {
      while (c!='\n') c = in.read();
      while (isWhiteSpace(c)) c = in.read();
    }
    if (c<'0' || c>'9') throw new IOException("Number missing");
    int ans = 0;
    while (c>='0' && c<='9') { ans = 10*ans + (c-'0'); c = in.read(); }
    if (!isWhiteSpace(c)) throw new IOException("White-space missing");
    return ans;
  }
  
  /** Writes 'n' to 'out' as an ASCII decimal number, followed by ' '. */
  private static void writeDecimal(OutputStream out, int n) throws IOException {
    int d = 11;
    final byte[] buffer = new byte[d];
    buffer[--d] = (byte)' ';
    do { buffer[--d] = (byte)('0'+(n%10)); n /= 10; } while (n>0);
    out.write(buffer, d, buffer.length-d);
  }
  
  /** Returns 'true' if 'c' is a space, tab, new-line or carriage-return. */
  private static boolean isWhiteSpace(int c) {
    return c==' ' || c=='\t' || c=='\n' || c=='\r';
  }
  
  private byte average(int a, int b, int c, int d) {
    return (byte)((a+b+c+d+2) >> 2);
  }
  
  /** The pixel values of this GreyMap. */
  private byte[] pixels;
  
  /* Test code. */
  
  /** Loads a GreyMap from a PGM file. If this method catches an IOException, it calls 'System.exit(0)'. */
  public static GreyMap load(String filename) {
    try {
      final InputStream in =
        new BufferedInputStream(new FileInputStream(filename));
      final GreyMap ans = new GreyMap(in);
      in.close();
      return ans;
    } catch (IOException e) {
      e.printStackTrace();
      System.exit(0);
      return null;
    }
  }
  
  /** Given one argument, displays the first image in the named PGM file. Given two, saves the image as a new PGM file with depth '255'. */
  public static void main(String[] args) throws IOException {
    if (args.length!=1 && args.length!=2) throw new IllegalArgumentException(
      "Syntax: java org.sc3d.apt.image.v2.GreyMap <infile> [<outfile>]"
    );
    final String infile = args[0];
    final String outfile = args.length==2 ? args[1] : null;
    // Load the PGM file.
    final GreyMap me = load(infile);
    me.display("Testing GreyMap: "+infile);
    me.shrink().display("Shrunk");
    me.blur().display("Blurred");
    me.blur().shrink().display("Blurred then shrunk");
    // Save the PGM file.
    if (outfile!=null) {
      final FileOutputStream fout = new FileOutputStream(outfile);
      me.writePGM(fout);
      fout.close();
      System.out.println("Written to file '"+outfile+"'");
    }
  }
}
