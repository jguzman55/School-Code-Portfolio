import java.util.Scanner;


public class AnyAverage {

		public static void main(String[] args) {
			System.out.println("This program will find the average of any amount of numbers");

			Scanner input = new Scanner(System.in);

			int count, total, runningCount;

			System.out.print("Please choose amount of numbers to average: ");
			count = input.nextInt();

			runningCount = count;
			total = 0;

			while (runningCount >= 0 ) {
				System.out.print("Please enter " + (count - runningCount) + " number: ");
				int num = input.nextInt();
				total = total + num;
				runningCount = runningCount - 1;
		
		}
			System.out.println("Average is " + (total/(count+1)));
		}
}
