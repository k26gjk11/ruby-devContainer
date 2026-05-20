class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
        int a=5;
        String s="Ruby";
        double d=3.14;
        System.out.println("a:"+a);
        System.out.println("s"+s);
        System.out.println("d"+d);
        if(a>5) {
            System.out.println("Large");
        } else if(a<0) {
            System.out.println("Negative");
        } else {
            System.out.println("Little");
        }
        int x=5;
        while(x>0) {
            System.out.println("#");
            x++;
        }
         System.out.println();
    }
}