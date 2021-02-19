import java.util.Scanner;
public class Multiples {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		int base = 0;
		int max = 0;
		System.out.print("Please enter the max number:" );
		max = input.nextInt();

		System.out.print("Enter the base:");
		base = input.nextInt();

		int i = 0;

		for(i = base; i <= max; i += base){
			System.out.println("Number is " + i);
		}
	}

}
