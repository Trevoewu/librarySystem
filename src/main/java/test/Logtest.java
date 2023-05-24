package test;

import org.aspectj.lang.annotation.Aspect;

public class Logtest {
    static protected void Hello(){
        System.out.println("hello");
    }

    public static void main(String[] args) {
        Hello();
    }
}
