
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.Scanner;

public class CopyPaste extends Strings{
	
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

	public static String getFilePath(Scanner scan){
		System.out.println("What course do you want to edit? bs1, bs2, or bs3?");
		String path = "courses/" + scan.nextLine() + "/units/unit";
		System.out.println("What unit number do you want to edit? 1-9");
		path += scan.nextLine() + "/the-unit.scrbl";
		System.out.println("The file you are editing is: " + path + " Is this correct? y/n");
		if(scan.nextLine().equals("n")) getFilePath(scan);
		return path;
	}
	
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
	
	public static void setDuration(PrintWriter file, Scanner scan){
		file.print(lessonDuration);
		String duration;
		do{
			System.out.println("Enter Lesson Duration");
			duration = scan.nextLine();
			System.out.println("You set the duration to " + duration);
			System.out.println("Is that Correct? y/n");
		} while(scan.nextLine().equals("n"));

		file.print(duration);
		file.print(lessonDurationEnd);
	}
	
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
	
	public static void createPoint(PrintWriter file, Scanner scan){
		file.print(openNewPoint);
        addStudent(file, scan);
		file.print(openTeacherPart);
		System.out.println("Add Corresponding Teacher Point? y/n");
		if(scan.nextLine().equals("y")) addTeacher(file, scan);
		file.print(closePoint);
	}
	
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

	public static void createObjectives(PrintWriter file, Scanner scan){
		file.print(lessonObjectivesStart);
		System.out.println("Would you like to add a lesson objective? y/n");
		while(scan.nextLine().equals("y")){
			addObjective(file, scan);
			System.out.println("Add another objective? y/n");
		}
		file.print(lessonObjectivesEnd);
	}
	
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

	public static void createEvidence(PrintWriter file, Scanner scan){
		file.print(lessonEvidenceStart);
		System.out.println("Would you like to add an evidence statement? y/n");
		while(scan.nextLine().equals("y")){
			addEvidence(file, scan);
			System.out.println("Add another evidence statement? y/n");
		}
		file.print(lessonEvidenceEnd);
	}
	
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

	public static void createOutcomes(PrintWriter file, Scanner scan){
		file.print(lessonOutcomesStart);
		System.out.println("Would you like to add a product outcome? y/n");
		while(scan.nextLine().equals("y")){
			addOutcome(file, scan);
			System.out.println("Add another outcome? y/n");
		}
		file.print(lessonOutcomesEnd);
	}
	
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

	public static void createMaterials(PrintWriter file, Scanner scan){
		file.print(lessonMaterialsStart);
		System.out.println("Would you like to add a material? y/n");
		while(scan.nextLine().equals("y")){
			addMaterial(file, scan);
			System.out.println("Add another material? y/n");
		}
		file.print(lessonMaterialsEnd);
	}
	
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

	public static void createPreparation(PrintWriter file, Scanner scan){
		file.print(lessonPreparationStart);
		System.out.println("Would you like to add a preparation point? y/n");
		while(scan.nextLine().equals("y")){
			addPrep(file, scan);
			System.out.println("Add another preparation point? y/n");
		}
		file.print(lessonPreparationEnd);
	}
	
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

	public static void createStandards(PrintWriter file, Scanner scan){
		file.print(lessonStandardsStart);
		System.out.println("Would you like to add a standard? y/n");
		while(scan.nextLine().equals("y")){
			addStandard(file, scan);
			System.out.println("Add another standard? y/n");
		}
		file.print(lessonStandardsEnd);
	}
	
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

