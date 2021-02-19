import java.util.Scanner;

public class PosAverage {

	public static void main(String[] args) {

		Scanner lol = new Scanner(System.in);

		int i = 0;
		int total = 0;
		int count = 0;
		
		
		
		do {
			
			System.out.print("Enter " + count+ " number:");
			i = lol.nextInt();
			//System.out.print(" number:" + i);
			if (i <= 0)
				break;
			total = total + i;
			count++;
	
		} while (i > 0);
		System.out.print("Average is " + total/count);
	}
}
