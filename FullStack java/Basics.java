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
    }
}
