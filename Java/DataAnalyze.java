import java.util.Scanner;
public class DataAnalyze {

	public static void main(String[] args) {
		Scanner scnr = new Scanner(System.in);
		int sampleSize = 0;


		System.out.print("Please enter the sample size:");
		sampleSize = scnr.nextInt();


		int[] trialOne = new int [sampleSize];
		int[] trialTwo = new int [sampleSize];
		int[] trialThree = new int [sampleSize];
		int[] trialFour = new int [sampleSize];

		int avgOne = 0, avgTwo = 0, avgThree = 0, avgFour = 0;

		int sumOne =0, sumTwo=0, sumThree = 0, sumFour =0;

		System.out.println("Enter numbers for Trial 0");
		int i = 0;
		for(i = 0; i < sampleSize; i++){
			System.out.print("Enter sample #" + i +":");
			trialOne[i] = scnr.nextInt();
			sumOne = sumOne + trialOne[i];
		}

		System.out.println("Enter numbers for Trial 1");
		for(i = 0; i < sampleSize; i++){
			System.out.print("Enter sample #" + i +":");
			trialTwo[i] = scnr.nextInt();
			sumTwo = sumTwo + trialTwo[i];
		}
		System.out.println("Enter numbers for Trial 2");
		for(i = 0; i < sampleSize; i++){
			System.out.print("Enter sample #" + i +":");
			trialThree[i] = scnr.nextInt();
			sumThree = sumThree + trialThree[i];
		}

		System.out.println("Enter numbers for Trial 3");
		for(i = 0; i < sampleSize; i++){
			System.out.print("Enter sample #" + i +":");
			trialFour[i] = scnr.nextInt();
			sumFour = sumFour + trialFour[i];
		}

		for(int j = 0; j <sampleSize; j++) {

			avgOne = sumOne/sampleSize;
			avgTwo = sumTwo/sampleSize;
			avgThree = sumThree/sampleSize;
			avgFour = sumFour/sampleSize;
		}

		System.out.println("\tSample #\t\tTrial 1\t\tTrial 2\t\tTrial 3\t\tTrial 4");

		for (int j = 0; j< sampleSize; j++){
			System.out.println("\t\t" + j + "\t\t" + trialOne[j] + "\t\t" + trialTwo[j] + "\t\t" + trialThree[j] + "\t\t" + trialFour[j]);

		}
		System.out.println("\t\t\t---------------------------------------------------------------");

		int j = 0;

		System.out.println("Average:" + "\t\t\t" + avgOne + "\t\t" + avgTwo + "\t\t" + avgThree + "\t\t" + avgFour);

		int Min = Integer.MAX_VALUE, minIndex = 0;
		int Max = Integer.MIN_VALUE, maxIndex = 0;
		int [] Avg= {avgOne ,avgTwo ,avgThree ,avgFour};
		int[] rev_arr = new int [Avg.length];

		for (i = 0; i < Avg.length; i++) {
			if (Avg[i] <= Min) {
				Min = Avg[i];
				minIndex = i;
			}
			if (Avg[i] >= Max) {
				Max = Avg[i];
				maxIndex = i;
			}
		}

		System.out.println("Minimum Average: " + Min);
		System.out.println("Maximum Average: " + Max);


		if(Min == Max) {
			System.out.print("The trials match EXACTLY!");
		}

		else if((2 * Min) > Max) {
			System.out.print("The trials concur with each other!");

		}
		else {
			System.out.print("The trials do NOT concur!");

		}
	}
}


