import java.util.Scanner;
public class AnyAverageArr {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("This program will find the average of any number");

		Scanner input = new Scanner(System.in);
		
		

		int count, total, runningCount;
		
		
		System.out.print("Please choose amount of numbers to average: ");
		count = input.nextInt();//6
		int[] arr = new int[count];
		runningCount = count;//6
		total = 0;
		
		while (runningCount > 0) {
			System.out.print("Please enter " + (count - runningCount) + " number: ");
			int num = input.nextInt();
			arr[count - runningCount] = num;
			total = total + num;
			runningCount = runningCount - 1;
			
			
			
			
		}
		
		for(int i = 0; i < count; ++i) {
			if(i == 0) {
				System.out.println("The numbers being averaged: ");
				System.out.print(arr[i] + " ");
				
				continue;
			
			}
			
			if(i % 5 == 0) {
				System.out.print(arr[i]);
				System.out.println();
			
			}
			
			else 
	           System.out.print(arr[i] + " ");
			
		}
		
		System.out.println();
        System.out.println("Average is " + (total/(count+1)));	}

	}


