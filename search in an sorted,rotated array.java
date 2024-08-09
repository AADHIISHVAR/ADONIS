package practice_core_java;

class dsa
{
	public int binarrySearch()
	{
		int [] arr = {4,5,6,7,8,0,1,2};
		int left = 0;
		int right = arr.length-1;
		int mid;
		int target = 4;
		while(left<=right)
		{
			mid = (left+right)/2;
			if(arr[mid]==target)
			{
				return 1; 
			}
			if(arr[left]<=arr[mid]) 
			{
				if(target<=arr[mid] && target>=arr[left]) 
				{
					right = mid+1;
				}
				else
				{
					left = mid+1;
				}
			}
			if(arr[mid]>=arr[right])
			{
				if(target>=arr[mid] && target<=arr[right]) 
				{
					left = mid+1; 
				}
				else
				{
					right = mid+1; 
				}
			}
		}
		return -1; 
	}
}
