package rahul;


import java.util.Random;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sonu
 */
public class Randoom
{ 
     public static int a;
    public static void main(String args[])
    {
        generator();
    }    
    
    public static int generator()
    {
        Random r=new Random();
        a=r.nextInt(15);
        System.out.println(a);
        return a;
        
    }
}


