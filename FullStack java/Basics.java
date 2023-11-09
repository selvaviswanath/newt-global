public class Basics {
    public static void main(String[] args) {
        // limits of numbers
        int max = 2147483647;
        int min = -2147483648;
        short shortMax = 32767;
        short shortMin = -32768;
        long longMax = 9223372036854775807L;
        long longMin = -9223372036854775808L;
        byte byteMax = 127;
        byte byteMin = -128;

        System.out.println(max);
        System.out.println(min);

        // implicit type casting
        float f = 10.532f;
        long l = (long) f;
        System.out.println(l);
        int x = 4;

        if (x != 5) {
            System.out.println("Value of x is not 5");

        } else {
            System.out.println("Value of x is 5");
        }
        x = 5;

        if (x == 5) {
            System.out.println("X equals to 5");
        } else if (x > 5) {
            System.out.println("X is greater to 5");
        } else {
            System.out.println("X is smaller than 5");
        }
        x = 5;
        x %= 5; // x = x % 5
        System.out.println(x);

        x = 1;

        switch (x) {
            case 1:
                System.out.println("The value of x is 1");
                break;
            case 2:
                System.out.println("The value of x is 2");
                break;
            case 3:
                System.out.println("The value of x is 3");
                break;
            default:
                System.out.println("The value of x is other than 1,2,3");
                break;
        }
        System.out.println("1+2=" + sum(1, 2));
        System.out.println("1+2.5=" + sum(1, 2.5F));
        System.out.println("1.3+2.3=" + sum(1.3, 2.3));
        System.out.println("1+2+3=" + sum(1, 2, 3));
    }

    public static int sum(int x, int y) {
        System.out.println("Adding 2 int entities");
        return x + y;
    }

    public static float sum(int x, float y) {
        System.out.println("Adding 1 int and 1 float entity");
        return x + y;
    }

    public static double sum(double x, double y) {
        System.out.println("Adding 2 double entities");
        return x + y;
    }

    public static int sum(int x, int y, int z) {
        System.out.println("Adding 3 int entities");
        return x + y + z;
    }
}