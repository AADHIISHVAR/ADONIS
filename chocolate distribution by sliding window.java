class Solution
{
    public long findMinDiff (ArrayList<Integer> a, int n, int m)
    {
        long minVal = Long.MAX_VALUE;
        Collections.sort(a);
        
        for(int  i = 0;i<=n-m;i++)
        {
            long diff = a.get(i+m-1)-a.get(i);
            if(diff<minVal)
            {
                minVal = diff;
            }
        }
        return minVal;
    }
}
