public with sharing class Singleton {
    
    //private static instance of the class
    private static Singleton instance = null;
    
    //private constructor to avoid creating an instance

    private Singleton(){}
    
    public static Singleton getInstance(){
           if(instance == null){
              instance = new Singleton();
            }
        return instance;
    }
}