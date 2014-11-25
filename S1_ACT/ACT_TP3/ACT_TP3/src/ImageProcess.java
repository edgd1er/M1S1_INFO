

public class ImageProcess {
	static final int lmax=256;
	static final int header=11;
	static int m;
	public static void main(String args[])
	{
		//int p[]=new int[40000];
		int s[]=new int[80000];
		int l[]=new int[80000];
		int b[]=new int[80000];
		/*File file=new File("/home/m1/dubiez/Documents/ACT_TP3/data.txt");
		if(!file.exists())
		{
			System.out.println("can not find data.txt");
		}
		else
		{
			try {
				Scanner inputf=new Scanner(new FileInputStream(file));
				for(int i=0;i<40000;i++)
				{
					p[i]=inputf.nextInt();
				}
				//System.out.println(inputf.nextInt());
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}*/
		int[] p={0,0,0,0,0,20,20,20,20,100,132,164,164,255,255,255,255,255,255,255,255,255};

		compass(p,s,l,b);
		output(s,l,b);
	}
	public static void compass(int p[],int s[],int l[],int b[])
	{
		int n=p.length-1;
		s[0]=0;
		for(int i=1;i<=n;i++)
		{
			b[i]=length(p[i]);
			int bmax=b[i];
			s[i]=s[i-1]+bmax;
			l[i]=1;
			for(int j=2;j<=i&&j<=lmax;j++)
			{
				if(bmax<b[i-j+1]) bmax=b[i-j+1];
				if(s[i]>s[i-j]+j*bmax)
				{
					s[i]=s[i-j]+j*bmax;
					l[i]=j;
				}
			}
			s[i]+=header;
		}
	}
	private static int length(int i)
	{
		int k=1;
		i=i/2;
		while(i>0)
		{
			k++;
			i=i/2;
		}
		return k;
	}
	private static void traceback(int n,int s[],int l[])
	{
		if(n==0) return;
		traceback(n-l[n],s,l);
		s[m++]=n-l[n];
	}
	public static void output(int s[],int l[],int b[])
	{
		int n=s.length-1;
		System.out.println("The optimal value is " + s[n]);
		m=0;
		traceback(n,s,l);
		s[m]=n;
		System.out.println("Decomposed into " + m + " segments");
		for(int j=1;j<=m;j++)
		{
			l[j]=l[s[j]];
			b[j]=b[s[j]];
		}
		for(int j=1;j<=m;j++)
			System.out.println(l[j]+" "+b[j]);
		
	}

}
