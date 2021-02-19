import java.util.Random;
import java.util.Scanner;

public class GenCheeseShopv2 {

	public static void intro(String[] names, double[]prices, int[] amounts) {
		// Fill-in
		int MAXCHEESE = prices.length;
		int i = 0;
		
		if (MAXCHEESE > 0){
			names[0] = "Dalaran Sharp";
			prices [0] = 1.25;
		} 
		if (MAXCHEESE >1){
			names[1] = "Stormwind Brie";
			prices[1] = 10.00;
		}
		if (MAXCHEESE >2){
			names[2] = "Alterac Swiss";
			prices[2]= 40.00;
		}
		
		System.out.println("We sell " + MAXCHEESE + " kinds of cheese");
	
		if (MAXCHEESE > 0){
			System.out.println(names[0] + ": $" + prices[0] + " per pound");
		}
		if (MAXCHEESE > 1){
			System.out.println(names[1] + ": $" + prices[1] + " per pound");
		}
		if (MAXCHEESE > 2){
			System.out.println(names[2] + ": $" + prices[2] + " per pound");
		}
		Random ranGen = new Random(100);
		for (i = 3; i < MAXCHEESE; i++){
			names[i] = "Cheese Type " + (char)('A' + i);
			prices[i] = ranGen.nextInt(1000)/100.0;
			amounts[i] = 0;
			
			System.out.println(names[i] + ": $" + prices[i] + " per pound");
		}
	}
	

	public static void getAmount(Scanner input, String[] names, int[] amounts) {
		// Fill-in
	int MAXCHEESE = amounts.length;
	int i = 0;
	if ( MAXCHEESE > 0){
		System.out.print("Enter the amount of Dalarian Sharp: ");
		amounts[0] = input.nextInt();
	}
	if (MAXCHEESE > 1){
		System.out.print("Enter the amount of Stormwind Brie: ");
		amounts[1] = input.nextInt();
	}
	if (MAXCHEESE > 2){
		System.out.print("Enter the amount of Alterac Swiss: ");
		amounts[2] = input.nextInt();
	}
	for (i = 3; i < MAXCHEESE; i++){
		System.out.print("Enter the amount of Cheese Type " + (char)('A' + i)+ " : ");
		amounts[i] = input.nextInt();
	}
	}

	public static void itemizedList(String[] names, double[]prices, int[] amounts) {
		// Fill-in
		int MAXCHEESE = names.length;
		for (int i = 0; i < MAXCHEESE; i++){
			if ( amounts[i] > 0)
				System.out.println(amounts[i] + " lbs of " + names[i] + " @ " + prices[i] + "= $" + prices[i] * amounts[i]);
		}
	}

	public static double calcSubTotal(double[] prices, int[] amounts) {
		// Fix
		int MAXCHEESE = prices.length;
		double subTotal = 0;
			for (int i = 0; i < MAXCHEESE; i++ ) {
				subTotal += prices [i] * amounts[i];
			}
		return subTotal;
	}

	public static int discount(double subTotal){
		// Fix
		int discount = 0;
			if (subTotal >=100 ){
				discount = 25;
				return discount;
			} else if (subTotal >= 50){
				discount = 10;
			}
		return discount;
	}

	public static void printTotal(double subTotal, int discount) {
		// Fill-in
		double total = subTotal - discount;
		
		System.out.println();
		System.out.println("Sub Total: $" + subTotal);
		System.out.println("-Discount: $" + discount);
		System.out.println("Total: $" + total);
		

	}

	public static void main(String[] args) {

		final int MAXCHEESE = 4;

		// DO NOT CHANGE ANYTHING BELOW
		String[] names = new String[MAXCHEESE];
		double[] prices = new double[MAXCHEESE];
		int[] amounts = new int[MAXCHEESE];

		Scanner input = new Scanner(System.in);

		intro(names, prices, amounts);

		getAmount(input, names, amounts);

		double total = calcSubTotal(prices, amounts);
		
		if (MAXCHEESE > 0) {
			System.out.print("Display the itemized list? (1 for yes) ");
			int itemized = input.nextInt();

			if (itemized == 1) {
				itemizedList(names, prices, amounts);
			}
		}

		System.out.println();

		printTotal(total,discount(total));
	}
}