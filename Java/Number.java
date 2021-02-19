import java.util.Scanner;

public class Number {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		System.out.print("Please enter a number 0-25: ");
		double num = input.nextInt();
		
		System.out.println("You have entered " + num);
		
		if (num == 0)
			System.out.print("Character of the alphabet is A");
		
			else if (num == 1)
				System.out.print("Character of the alphabet is B");
		
			else if (num == 2)
				System.out.print("Character of the alphabet is C");
		
			else if (num == 3)
				System.out.print("Character of the alphabet is D");
		
			else if (num == 4)
				System.out.print("Character of the alphabet is E");
			
			else if (num == 5)
				System.out.print("Character of the alphabet is F");
		
			else if (num == 6)
				System.out.print("Character of the alphabet is G");
		
			else if (num == 7 )
				System.out.print("Character of the alphabet is H");
		
			else if (num == 8)
				System.out.print("Character of the alphabet is I");
		
			else if (num == 9)
				System.out.print("Character of the alphabet is J");
		
			else if (num == 10)
				System.out.print("Character of the alphabet is K");
		
			else if (num == 11)
				System.out.print("Character of the alphabet is L");
		
			else if (num == 12)
				System.out.print("Character of the alphabet is M");
		
			else if (num == 13)
				System.out.print("Character of the alphabet is N");
		
			else if (num == 14)
				System.out.print("Character of the alphabet is O");
		
			else if (num == 15)
				System.out.print("Character of the alphabet is P");
		
			else if (num == 16)
				System.out.print("Character of the alphabet is Q");
		
			else if (num == 17)
				System.out.print("Character of the alphabet is R");
		
			else if (num == 18)
				System.out.print("Character of the alphabet is S");
		
			else if (num == 19)
				System.out.print("Character of the alphabet is T");
		
			else if (num == 20)
				System.out.print("Character of the alphabet is U");
		
			else if (num == 21)
				System.out.print("Character of the alphabet is V");
		
			else if (num == 22)
				System.out.print("Character of the alphabet is W");
		
			else if (num == 23)
				System.out.print("Character of the alphabet is X");
		
			else if (num == 24)
				System.out.print("Character of the alphabet is Y");
		
			else if (num == 25)
				System.out.print("Character of the alphabet is Z");
		
			else if (num > 26)
				System.out.print("Outside of acceptable range");
		
	}

}
