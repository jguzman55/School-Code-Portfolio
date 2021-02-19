import java.util.Scanner;
public class remainderFunc {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub System.out.print("");
		
		Scanner input = new Scanner(System.in);
		
		int max = 0;
		
		int divisor = 0;
		
		System.out.print("Please enter the max number: ");
			max = input.nextInt();
		
		System.out.print("Please enter the divisor: ");
			divisor = input.nextInt();
	
		int i = 1;
		
		while ( i <= max){
			int res = i % divisor;
			
			System.out.println("Num: " + i + " % " + divisor + " = " + res);
			i++;
		
		}
	
		
	}

}
