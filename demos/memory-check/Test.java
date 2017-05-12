public class Test {
   static byte[] data;

   public static void main(String[] args) throws Exception {
      int i=0;
      while(true) {
        data = new byte[5 * 1024 * 1024];
        System.out.println(i++);
        Thread.sleep(1000);
      }
   }
}
