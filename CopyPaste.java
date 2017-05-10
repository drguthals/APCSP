
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 * This program provides the functionality to copy and paste lessons from a text editor 
 * 	into Bootstrap without dealing directly with the .scrbl file
 * The strings that get written to the .scrbl file to make it compile in racket can all
 * 	be found in Strings.java
 * The user can either create an entirely new unit (overwrite the existing file) or
 *	add lessons to an already existing unit (append to the existing file)
 */
public class CopyPaste extends Strings{
	
	/**
	 * the main method figures out whether it needs to overwite the .scrbl file or append to it, 
	 * opens the file correctly, calls the appropriate method, and closes the file
	 */
	public static void main(String[] args){
		Scanner scan = new Scanner(System.in);
		System.out.println("Would you like to create a new unit or add a lesson to an existing unit?" +
				" create/add");
		if(scan.nextLine().equals("create")){
			String path = getFilePath(scan);
			try{
				PrintWriter file = new PrintWriter(path, "UTF-8");
				promptUser(file, scan);
				file.close();
			} catch (IOException e){ System.out.println("error!");}
		}
		else{
			String path = getFilePath(scan);
			try{
				FileWriter fw = new FileWriter(path, true);
				BufferedWriter bw = new BufferedWriter(fw);
				PrintWriter file = new PrintWriter(bw);
				do{
					createLesson(file, scan);
					System.out.println("Create another lesson? y/n");
				} while(scan.nextLine().equals("y"));
				file.close();
				bw.close();
				fw.close();
			} catch(IOException e){ System.out.println("error!");}
		}
	}

	/**
	 * this method prompts the user to enter the course and unit they want to edit
	 * it prints out the file path for the .scrbl file from the APCSP directory based 
	 * on the information they provided to ensure that the path is correct before 
	 * overwriting/appending to the file
	 * it returns the path created to be used in opening the file
	 */
	public static String getFilePath(Scanner scan){
		System.out.println("What course do you want to edit? bs1, bs2, or bs3?");
		String path = "courses/" + scan.nextLine() + "/units/unit";
		System.out.println("What unit number do you want to edit? 1-9");
		path += scan.nextLine() + "/the-unit.scrbl";
		System.out.println("The file you are editing is: " + path + " Is this correct? y/n");
		if(scan.nextLine().equals("n")) getFilePath(scan);
		return path;
	}
	
	/**
	 * this method prompts the user to name the unit (by calling nameUnit), enter the unit 
	 * description (by calling unitDescription), and handles creating new lessons by calling 
	 * createLesson every time the user indicates they would like to create a lesson
	 */
	public static void promptUser(PrintWriter file, Scanner scan){
		file.print(header);
		nameUnit(file, scan);
		file.print(tags);
		file.print(unitOverview);
		file.print(unitLessonsOpen);
		unitDescription(file, scan);
		System.out.println("Create new lesson? y/n");
		String answer = scan.nextLine();
       		while(answer.equals("y")){
        		createLesson(file, scan);
        		System.out.println("Create new lesson? y/n");
    			answer = scan.nextLine();
        	}
	}
	
	/**
	 * this method prompts the user to enter the title of this unit, checks that what
	 * the user entered is what they intended, and prints the necessary title code to the 
	 * .scrbl file
	 */
	public static void nameUnit(PrintWriter file, Scanner scan){
		file.print(titleBeginning);
		String title;
		do{
			System.out.println("Enter Unit Title");
			title = scan.nextLine();
			System.out.println("You named this unit: " + title);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));
		
		file.print(title);
		file.print(titleEnd);
	}
	
	/**
	 * this method prompts the user to enter a decription of the unit, checks that what
	 * the user entered is what they intended, and prints the necessary description 
	 * code to the .scrbl file
	 */
	public static void unitDescription(PrintWriter file, Scanner scan){
		file.print(unitDescriptionBegin);
		String description;
		do{
			System.out.println("Enter Unit Description");
			description = scan.nextLine();
			System.out.println("You described this unit as: " + description);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));
		file.print(description);
		file.print(unitDescriptionEnd);
	}
	
	/**
	 * this method handles the creating of a new lesson by calling methods for each component
	 * of the lessson and allowing the user to enter as many points as they want
	 */
	public static void createLesson(PrintWriter file, Scanner scan){
		file.print(lessonOpen);
		nameLesson(file, scan);
		setDuration(file, scan);
		lessonOverview(file, scan);
		createObjectives(file, scan);		
		createEvidence(file, scan);
		createOutcomes(file, scan);		
		createStandards(file, scan);	
		createMaterials(file, scan);		
		createPreparation(file, scan);		
		file.print(pacingsList);
		file.print(openPoints);
		System.out.println("Create new point? y/n");
		String answer = scan.nextLine();
        	while(answer.equals("y")){
        		createPoint(file, scan);
        		System.out.println("Create new point? y/n");
    			answer = scan.nextLine();
       		}
		file.print(closeLessonPoints);
	}
	
	/**
	 * this method prompts the user to name the lesson, checks that they have named 
	 * it correctly, and prints the appropriate code to the .scrbl file
	 */
	public static void nameLesson(PrintWriter file, Scanner scan){
		file.print(lessonTitle);
		String title;
		do{
			System.out.println("Enter Lesson Title");
			title = scan.nextLine();
			System.out.println("You named this lesson: " + title);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(title);
		file.print(lessonTitleEnd);
	}
	
	/**
	 * this method prompts the user to enter the duration of the lesson, checks that
	 * it's correct, and prints the appropriate code to the .scrbl file
	 */
	public static void setDuration(PrintWriter file, Scanner scan){
		file.print(lessonDuration);
		String duration;
		do{
			System.out.println("Enter Lesson Duration (in minutes)");
			duration = scan.nextLine();
			System.out.println("You set the duration to " + duration);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(duration);
		file.print(lessonDurationEnd);
	}
	
	/**
	 * this method prompts the user to enter an overview for the lesson, checks that
	 * it's correct, and prints the appropriate code to the .scrbl file
	 */
	public static void lessonOverview(PrintWriter file, Scanner scan){
		file.print(lessonOverview);
		String overview;
		do{
			System.out.println("Enter Lesson Overview");
			overview = scan.nextLine();
			System.out.println("You described the lesson as: " + overview);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(overview);
		file.print(lessonOverviewEnd);
	}
	
	/**
	 * this method handles creating a new point with both student and teacher parts by
	 * 	calling methods for each
	 * the teacher point is optional, but the student point is not
	 */
	public static void createPoint(PrintWriter file, Scanner scan){
		file.print(openNewPoint);
        	addStudent(file, scan);
		file.print(openTeacherPart);
		System.out.println("Add Corresponding Teacher Point? y/n");
		if(scan.nextLine().equals("y")) addTeacher(file, scan);
		file.print(closePoint);
	}
	
	/**
	 * this method prompts the user to enter the student part of the point, checks
	 * that it's correct and prints the appropriate code to the .scrbl file
	 */
	public static void addStudent(PrintWriter file, Scanner scan){
		String student;
		do{
			System.out.println("Enter Student Point");
			student = scan.nextLine();
			System.out.println("You entered the student point: " + student);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(student);
	}
	
	/**
	 * this method prompts the user to enter the teacher part of the point, checks 
	 * that it's correct, and prints the appropriate code to the .scrbl file
	 */
	public static void addTeacher(PrintWriter file, Scanner scan){
		String teacher;
		do{
			System.out.println("Enter Teacher Point");
			teacher = scan.nextLine();
			System.out.println("You entered the teacher point: " + teacher);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(teacher);
	}

	/**
	 * this method asks the user if they would like to add a lesson objective, then
	 * calls addObjective if the user answers yes
	 * It prints the necessary code to the .scrbl file regardless of whether or not
	 * the user wishes to add an objective
	 */
	public static void createObjectives(PrintWriter file, Scanner scan){
		file.print(lessonObjectivesStart);
		System.out.println("Would you like to add a lesson objective? y/n");
		while(scan.nextLine().equals("y")){
			addObjective(file, scan);
			System.out.println("Add another objective? y/n");
		}
		file.print(lessonObjectivesEnd);
	}
	
	/**
	 * this method prompts the user to enter an objective, checks that it's correct, 
	 * and prints the appropriate code to the .scrbl file
	 */
	public static void addObjective(PrintWriter file, Scanner scan){
		file.print(itemStart);
		String objective;
		do{
			System.out.println("Enter an objective");
			objective = scan.nextLine();
			System.out.println("You entered the objective: " + objective);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(objective);
		file.print(itemEnd);
	}

	/**
	 * this method asks the user if they would like to add an evidence statement,
	 * then calls addEvidence if the user answers yes
	 * It prints the necessary code to the .scrbl file regardless of whether or not
	 * the user wishes to add an evidence statement
	 */ 
	public static void createEvidence(PrintWriter file, Scanner scan){
		file.print(lessonEvidenceStart);
		System.out.println("Would you like to add an evidence statement? y/n");
		while(scan.nextLine().equals("y")){
			addEvidence(file, scan);
			System.out.println("Add another evidence statement? y/n");
		}
		file.print(lessonEvidenceEnd);
	}
	
	/**
	 * this method prompts the user to enter an evidence statement, checks that it's
	 * correct, and prints the appropriate code to the .scrbl file
	 */
	public static void addEvidence(PrintWriter file, Scanner scan){
		file.print(itemStart);
		String evidence;
		do{
			System.out.println("Enter an evidence statement");
			evidence = scan.nextLine();
			System.out.println("You entered the evidence statment: " + evidence);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(evidence);
		file.print(itemEnd);
	}

	/**
	 * this method asks the user if they would like to add a product outcome, then
	 * calls addOutcome if the user answers yes
	 * It prints the necessary code to the .scrbl file regardless of whether or not 
	 * the user wishes to add a product outcome
	 */
	public static void createOutcomes(PrintWriter file, Scanner scan){
		file.print(lessonOutcomesStart);
		System.out.println("Would you like to add a product outcome? y/n");
		while(scan.nextLine().equals("y")){
			addOutcome(file, scan);
			System.out.println("Add another outcome? y/n");
		}
		file.print(lessonOutcomesEnd);
	}
	
	/**
	 * this method prompts the user to enter an outcome, checks that it's correct,
	 * and prints the appropriate code to the .scrbl file
	 */
	public static void addOutcome(PrintWriter file, Scanner scan){
		file.print(itemStart);
		String outcome;
		do{
			System.out.println("Enter an outcome");
			outcome = scan.nextLine();
			System.out.println("You entered the outcome: " + outcome);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(outcome);
		file.print(itemEnd);
	}

	/**
	 * this method asks the user if they would like to add a material for the lesson, 
	 * then calls addMaterial if the user answers yes
	 * It prints out the necessary code to the .scrbl file regardless of whether or
	 * not the user wishes to add a material
	 */
	public static void createMaterials(PrintWriter file, Scanner scan){
		file.print(lessonMaterialsStart);
		System.out.println("Would you like to add a material? y/n");
		while(scan.nextLine().equals("y")){
			addMaterial(file, scan);
			System.out.println("Add another material? y/n");
		}
		file.print(lessonMaterialsEnd);
	}
	
	/**
	 * this method prompts the user to enter a material, checks that it's correct,
	 * and prints the appropriate code to the .scrbl file
	 */
	public static void addMaterial(PrintWriter file, Scanner scan){
		file.print(itemStart);
		String material;
		do{
			System.out.println("Enter a material");
			material = scan.nextLine();
			System.out.println("You entered the material: " + material);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(material);
		file.print(itemEnd);
	}

	/**
	 * this method asks the user if they would like to add a preparation point for
	 * the lesson, then calls addPrep if the user answers yes
	 * It prints out the necessary code to the .scrbl file regardless of whether or 
	 * not the user wishes to add a preparation point
	 */
	public static void createPreparation(PrintWriter file, Scanner scan){
		file.print(lessonPreparationStart);
		System.out.println("Would you like to add a preparation point? y/n");
		while(scan.nextLine().equals("y")){
			addPrep(file, scan);
			System.out.println("Add another preparation point? y/n");
		}
		file.print(lessonPreparationEnd);
	}
	
	/**
	 * this method prompts the user to enter a preparation point, checks that it's
	 * correct, and prints the appropriate code to the .scrbl file
	 */
	public static void addPrep(PrintWriter file, Scanner scan){
		file.print(itemStart);
		String prep;
		do{
			System.out.println("Enter a preparation point");
			prep = scan.nextLine();
			System.out.println("You entered the preparation point: " + prep);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(prep);
		file.print(itemEnd);
	}

	/**
	 * this method asks the user if they would like to a standard for the lesson, then
	 * calls addStandard if the user answers yes
	 * It prints out the necessary code to the .scrbl file regardless of whether or not
	 * the user wishes to add a standard
	 */
	public static void createStandards(PrintWriter file, Scanner scan){
		file.print(lessonStandardsStart);
		System.out.println("Would you like to add a standard? y/n");
		while(scan.nextLine().equals("y")){
			addStandard(file, scan);
			System.out.println("Add another standard? y/n");
		}
		file.print(lessonStandardsEnd);
	}
	
	/**
	 * this method prompts the user to enter a standard, checks that it's correct, and
	 * prints the appropriate code to the .scrbl file
	 */
	public static void addStandard(PrintWriter file, Scanner scan){
		file.print(" \"");
		String standard;
		do{
			System.out.println("Enter a standard");
			standard = scan.nextLine();
			System.out.println("You entered the standard: " + standard);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(standard);
		file.print("\"");
	}
}

