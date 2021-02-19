import java.util.Scanner;
public class Interviewer {

	private static Scanner input;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		input = new Scanner(System.in);
		String name;
		
		//Name//
		
		System.out.print("What is your name?");
		name = input.nextLine();
		
		//Age//
		
		int age=0;
		System.out.print("How old are you");
		age = input.nextInt();
		
		//Weight//
		
		int weight,kg;
		System.out.print("How much do you weigh in pounds?");
		weight = input.nextInt();
		kg = (int) (weight * 2.2);
		
		//Major//
		
		String major;
		System.out.print("What is your major?");
		major = input.nextLine();
		
		//City//
		
		String city;
		System.out.print("Where are you from?"); 
		city = input.nextLine();
		
		//Hobby//
		
		String hobby;
		System.out.print("What are your hobbies?");
		hobby = input.nextLine();
		
		//Paragraph//
		
		System.out.print("Their name is ");
		System.out.print(name + ".");
		
		System.out.print(" Their age is ");
		System.out.print(age + ".");
		
		System.out.print(" Their weight in kilograms is ");
		System.out.print(kg + ".");
		
		System.out.print(" Their major is ");
		System.out.print(major + ".");
		
		System.out.print(" Their from ");
		System.out.print(city + ".");
		
		System.out.print(" Their hobies are ");
		System.out.print(hobby + ".");
	}

}
