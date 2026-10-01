public class program1Factorial
{
    public static void main(String[] args)
    {
        for(int i =0; i<=50; i++)
        {
            System.out.println(i + " and " + factorial(i));
        }
    }
    
    public static int factorial(int n)
    {
        if(n==0)
        {
            return 1;
        }
        else
            return n * factorial(n-1);
    }
}
