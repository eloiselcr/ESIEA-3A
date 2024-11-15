public class Second {

    public class Insect {
        protected int i = 9;
        protected int j;
        public Insect() {
            display("Insect constructor i = " + i + ", j = " + j);
            j = 39;
        }
        static private int x1 = display("static Insect.x1 initialized");
        static public int display(String s) {
            System.out.println(s);
            return 47;
        }
    }
    
    public class Beetle extends Insect {
        private int k = display("Beetle.k initialized");
        public Beetle() {
            display ("Beetle constructor");
            display ("k = " + k);
            display ("j = " + j);
        }
        static private int x2 = display ("static Beetle.x2 initialized");
        public static void main(String[] args) {
            display ("Entered main");
            Beetle b = new Beetle();
        }
    }
    
}
