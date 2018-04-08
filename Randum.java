package rahul;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

public class Randum {
    
   public static int a[]=new int[7];

    public static void main(String[] args) {
        
        generator();
       
    }
    
     public static int[] generator()
    {
       
        ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=1; i<=15; i++) 
        {
            list.add(new Integer(i));
        }
        Collections.shuffle(list);
        for (int i=0; i<7; i++) 
        {
           // System.out.println(list.get(i));
            a[i]=list.get(i);
        }
           System.out.println(a[0]);
           System.out.println(a[1]);
           System.out.println(a[2]);
           System.out.println(a[3]);
           System.out.println(a[4]);
           System.out.println(a[5]);
           System.out.println(a[6]);          
           
           
           
           
           
       return a; 
    }
}
