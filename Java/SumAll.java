import java.util.Scanner;


public class SumAll {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		System.out.print("Please enter the max number:");

		int max = input.nextInt();
		int i = 0;
		int sum = 0;
		while ( i <= max) {//i=4
			System.out.println("Number " + i);
			//i++;
			sum = sum + i; 
			if (i == max){
				System.out.print("Sum of all numbers is " + sum );	
			}
			i++;
		}
	}
}
