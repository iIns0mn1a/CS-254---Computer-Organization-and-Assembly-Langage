public class program1Loops{
public static void main(String[] args)
{
    for(int i = 1; i<= 50; i++)
    {
        int a = 1;
        for(int x =1; x <=i; x++)
        {
            a*=x;
        }
        System.out.println(i + ": " +a);
    }
        
}
    
}