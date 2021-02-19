import java.util.Scanner;
public class SumSquare {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		
		int max = 0;
		
		System.out.print("Please enter the max number:");
			max = input.nextInt();
		
		int i = 0;
		int sq=0;
		int sum = 0;
		for(i = 1; i <= max; i++){
			//square
			 sq = i * i;
			System.out.println("Number " + i + " squared is " + sq);
			sum = sum + sq; 
			if (i == max){
				System.out.print("Sum of all numbers is " + sum );
				i++;
			}
			
	}
		
}
}