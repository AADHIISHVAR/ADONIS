package practice_core_java;

class dsa
{
	public int show(int [] arr)
	{
		int min = Integer.MAX_VALUE;
		int max = 0;
		for(int i = 0;i<arr.length-1;i++)
		{
			if(arr[i]<min)
			{
				min = arr[i];
			}
			else
			{
				int profit = arr[i] - min;
				if(profit>max)
				{
					max = profit;
				}
			}
		}
		return max; 
	}
	public static void main(String[] args) 
	{
		int [] arr = {7,1,5,3,6,4};
		dsa name = new dsa();
		int diss = name.show(arr);
		System.out.println(diss);
	}
	
}
