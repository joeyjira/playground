import java.util.ArrayList;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		List<Number> list = new ArrayList<>();
		test(list);
	}
	
	public static <T> List<?> test(List<T> num) {
		return new ArrayList<Integer>();
	}
}
