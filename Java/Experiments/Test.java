public class Test {
  public Test() {};

  public void printTest(Object a) {
    System.out.println("This is from Test");
  }

  public static void main(String[] args) {
    Test test = new SubTest();
    test.printTest(2);
  }
}

class SubTest extends Test {
  public SubTest() {
    super();
  }

  public void printTest(Object a) {
    System.out.println("Print test overidden");
  }
}
