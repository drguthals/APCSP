import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.*;

/**
 * This class provides a GUI for making bootstrap lessons without 
 * dealing with the "the-unit.scrbl" file directly
 */
public class CopyPasteGUI extends Strings implements ActionListener{

	//the JFrame that contains all the panels and such displayed
	private JFrame frame;

	//the first page to welcome to bootstrap and choose to create a new unit
	//or add to an existing one
	private JLabel label; //used throughout the GUI to summarize what's happening
	private JButton create;
	private JButton add;
	private JPanel choose;

	//variables to determine filepath for "the-unit.scrbl"	
	private JPanel chooseCourse;
	private JPanel chooseUnit;
	private JLabel courseInstructions;
	private JTextField course;
	private JPanel chooseUnitName;

	//variables needed to create a new unit
	private JPanel chooseUnitDescription;
	private JPanel buttons;
	private JTextField unit;
	private JTextField name;
	private JTextArea description;

	//variables needed to create a new lesson
	private JPanel lessonName;
	private JPanel lessonDuration;
	private JPanel lessonOverview;
	private JPanel lessonButtons;
	private JPanel returnFromLesson;
	private JTextField lessonTitle;
	private JTextField lessonTiming;
	private JTextArea lessonDescription;
	private ArrayList<String> lessons = new ArrayList<String>();


	//true if creating a new lesson, false otherwise
	private boolean creating;

	//variables needed to add student/teacher points
	private JPanel studentPoint;
	private JPanel teacherPoint;
	private JTextArea student;
	private JTextArea teacher;
	private JPanel returnFromPoints;
	private ArrayList<String> points = new ArrayList<String>();

	//variables needed to add lesson materials
	private JPanel materials;
	private JTextField mater;
	private ArrayList<String> lessonMaterials = new ArrayList<String>();
	private JPanel materialButtons;

	//variables needed to add preparation points
	private ArrayList<String> preps = new ArrayList<String>();
	private JPanel preppy;
	private JPanel prepButtons;
	private JTextField prePoint;

	//variables needed to add product outcomes
	private ArrayList<String> lessonOutcomes = new ArrayList<String>();
	private JPanel out;
	private JPanel outButtons;
	private JTextField outProd;


	/**
	 * constructor calls createGUI to start program
	 */
	public CopyPasteGUI(){
		createGUI();
	}

	/**
	 * sets up the inital frame and buttons, which the user can then click to go through program
	 */
	public void createGUI(){

		//setting up frame to hold all JPanels
		frame = new JFrame("Bootstrap Editor");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.PAGE_AXIS));
	
		//initializing all the JPanels
		chooseCourse = new JPanel();
		chooseUnit = new JPanel();
		chooseUnitName = new JPanel();
		chooseUnitDescription = new JPanel();
		buttons = new JPanel();
		lessonName = new JPanel();
		lessonDuration = new JPanel();
		lessonOverview = new JPanel();
		lessonButtons = new JPanel();
		returnFromLesson = new JPanel();
		studentPoint = new JPanel();
		teacherPoint = new JPanel();
		materials = new JPanel();
		materialButtons = new JPanel();
		preppy = new JPanel();
		prepButtons = new JPanel();
		out = new JPanel();
		outButtons = new JPanel();

		//this panel holds the label and buttons for the starting frame
		choose = new JPanel();
		choose.setOpaque(true);

		//initialize label and create/add buttons
		label = new JLabel("Welcome to the Bootstrap GUI!");
		create = new JButton("Create New Unit");
		add = new JButton("Add a Lesson to an Existing Unit");

		//add this class as an action listener for the buttons
		//set their action commands to determine which button was clicked
		create.addActionListener(this);
		add.addActionListener(this);
		create.setActionCommand("create");
		add.setActionCommand("add");

		//add label and buttons to panel
		choose.add(label);
		choose.add(create);
		choose.add(add);

		//add panel to frame and set frame size
		frame.getContentPane().add(choose);		
		frame.setSize(800, 800);
		frame.setVisible(true);
	}

	/**
	 * this method gets called whenever a button is clicked
	 * it checks which button was clicked and performs the necessary actions
	 */
	public void actionPerformed(ActionEvent e){
		//handles the event where a user wishes to create a new unit
		if(e.getActionCommand().equals("create")){
			label.setText("Creating New Unit");
			creating = true;
		        createUnit();
			create.setVisible(false);
			add.setVisible(false);

		//handles the event where the user wishes to add to an existing unit
		} else if(e.getActionCommand().equals("add")){
			label.setText("Adding to Existing Unit");
			creating = false;
			addToUnit();
			create.setVisible(false);
			add.setVisible(false);

		//handles the event where the user is finished with the unit, and
		//the-unit.scrbl can be created
		} else if(e.getActionCommand().equals("done")){
			chooseCourse.setVisible(false);
			chooseUnit.setVisible(false);
			chooseUnitName.setVisible(false);
			chooseUnitDescription.setVisible(false);
			buttons.setVisible(false);
			label.setText("the-unit.scrbl file has been created!");	
			createFile();

		//handles the event where the user wants to add a new lesson
		} else if(e.getActionCommand().equals("lesson")){
			label.setText("Creating New Lesson");
			chooseCourse.setVisible(false);
			chooseUnit.setVisible(false);
			chooseUnitName.setVisible(false);
			chooseUnitDescription.setVisible(false);
			buttons.setVisible(false);
			addLesson();

		//handles the event where the user is finished with the lesson, 
		//and returns to the unit screen
		} else if(e.getActionCommand().equals("finish")){
			handleLessonExit();
			recordLesson();

		//handles the event where the user wants to add a new student/teacher point
		} else if(e.getActionCommand().equals("points")){
			label.setText("Creating New Point");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupPoints();

		//handles the event where the user is finished with creating the point and 
		//goes back to the lesson screen
		} else if(e.getActionCommand().equals("finis")){
			label.setText("Creating New Lesson");
			studentPoint.setVisible(false);
			teacherPoint.setVisible(false);
			returnFromPoints.setVisible(false);
			lessonName.setVisible(true);
			lessonDuration.setVisible(true);
			lessonOverview.setVisible(true);
			lessonButtons.setVisible(true);
			returnFromLesson.setVisible(true);
			recordPoint();	

		//handles the event where the user wants to create a new point from the 
		//current point they are editing
		} else if(e.getActionCommand().equals("nouveau")){
			studentPoint.setVisible(false);
			teacherPoint.setVisible(false);
			returnFromPoints.setVisible(false);
			recordPoint();
			setupPoints();

		//handles the event where the user wants to create a new lesson from the
		//current lesson they are editing
		} else if(e.getActionCommand().equals("new")){
			recordLesson();
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			addLesson();

		//handles the event where the user wants to add a lesson material
		} else if(e.getActionCommand().equals("materials")){
			label.setText("Adding a Material");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupMaterials();

		//handles the event where the user is done adding lesson materials
		//and returns to the lesson screen
		} else if(e.getActionCommand().equals("fin")){
			label.setText("Creating New Lesson");
			materials.setVisible(false);
			materialButtons.setVisible(false);
			lessonName.setVisible(true);
			lessonDuration.setVisible(true);
			lessonOverview.setVisible(true);
			lessonButtons.setVisible(true);
			returnFromLesson.setVisible(true);
			recordMaterial();

		//handles the event where the user wants to add another lesson 
		//material from the current lesson material they're editing
		} else if(e.getActionCommand().equals("newb")){
			materials.setVisible(false);
			materialButtons.setVisible(false);
			recordMaterial();
			setupMaterials();

		//handles the event where the user wants to add a preparation point
		} else if(e.getActionCommand().equals("preparation")){
			label.setText("Adding a Preparation Point");	
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupPrep();

		//handles the event where the user is finished adding preparation 
		//points and returns to the lesson screen
		} else if(e.getActionCommand().equals("finished")){
			label.setText("Creating New Lesson");
			preppy.setVisible(false);
			prepButtons.setVisible(false);
			lessonName.setVisible(true);
			lessonDuration.setVisible(true);
			lessonOverview.setVisible(true);
			lessonButtons.setVisible(true);
			returnFromLesson.setVisible(true);
			recordPrep();

		//handles the event where the user wants to add another preparation
		//point from the current preparation point they're editing
		} else if(e.getActionCommand().equals("newly")){
			preppy.setVisible(false);
			prepButtons.setVisible(false);
			recordPrep();
			setupPrep();

		//handles the event where the user wants to add a product outcome
		} else if(e.getActionCommand().equals("outcomes")){
			label.setText("Adding a Product Outcome");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupOutcome();

		//handles the event where the user is done adding product outcomes and
		//returns to the lesson screen
		} else if(e.getActionCommand().equals("finally")){
			label.setText("Creating New Lesson");
			out.setVisible(false);
			outButtons.setVisible(false);
			lessonName.setVisible(true);
			lessonDuration.setVisible(true);
			lessonOverview.setVisible(true);
			lessonButtons.setVisible(true);
			returnFromLesson.setVisible(true);
			recordOutcome();

		//handles the event where the user wants to add another product outcome
		//from the current outcome they're editing
		} else if(e.getActionCommand().equals("nebulus")){
			out.setVisible(false);
			outButtons.setVisible(false);
			recordOutcome();
			setupOutcome();
		}
	}

	//calls helper methods to add the appropriate text fields, labels, and buttons for
	//the user to enter the information needed for creating a new unit
	public void createUnit(){
		courseName();
		unitNumber();
		nameUnit();
		unitDescription();
		unitButtons();
	}

	//calls helper methods to add the appropriate text fields, labels, and buttons for
	//the user to enter the information needed for adding to an existing unit
	public void addToUnit(){
		courseName();
		unitNumber();
		unitButtons();	
	}

	//provides a space and instructions for the user to enter which course they are editing
	public void courseName(){
		courseInstructions = new JLabel("What course do you want to edit? (bs1, bs2, or bs3)");
		course = new JTextField(10);

		chooseCourse.add(courseInstructions);
		chooseCourse.add(course);
		
		frame.getContentPane().add(chooseCourse);	
	}

	//provides a space and instructions for the user to enter which unit they are editing
	public void unitNumber(){
		JLabel instructions = new JLabel("What unit number do you want to edit? (1-9)");
		unit = new JTextField(10);

		chooseUnit.add(instructions);
		chooseUnit.add(unit);

		frame.getContentPane().add(chooseUnit);

	}

	//provides a space and instructions for the user to enter the unit title
	public void nameUnit(){
		JLabel instructions = new JLabel("Enter Unit Title:");
		name = new JTextField(20);

		chooseUnitName.add(instructions);
		chooseUnitName.add(name);

		frame.getContentPane().add(chooseUnitName);

	}

	//provides a space and instructions for the user to enter the unit description
	public void unitDescription(){
		JLabel instructions = new JLabel("Enter Unit Description:");
		description = new JTextArea(10, 30);
		description.setLineWrap(true);

		JScrollPane scroll = new JScrollPane(description);
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		chooseUnitDescription.add(instructions);
		chooseUnitDescription.add(scroll);

		frame.getContentPane().add(chooseUnitDescription);
	}

	//provides buttons for the user to either indicate they are finished editing the unit, or
	//would like to add a new lesson
	public void unitButtons(){
		JButton done = new JButton("Finish");
		JButton lesson = new JButton("Add New Lesson");

		done.addActionListener(this);
		lesson.addActionListener(this);

		done.setActionCommand("done");
		lesson.setActionCommand("lesson");

		buttons.add(done);
		buttons.add(lesson);
		frame.getContentPane().add(buttons);
	}

	//calls helper functions to provide the appropriate labels, text fields, and buttons for the
	//user to enter the necessary information for creating a lesson
	public void addLesson(){	
		nameLesson();
		setDuration();
		lessonOverview();
		lessonButtons();
		returnToUnit();
	}

	//provides a space and instructions for the user to enter the lesson title
	public void nameLesson(){
		lessonName = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Title:");
		lessonTitle = new JTextField(20);

		lessonName.add(instructions);
		lessonName.add(lessonTitle);
		frame.getContentPane().add(lessonName);
	}

	//provides a space and instructions for the user to enter how many minutes the 
	//lesson will likely take
	public void setDuration(){
		lessonDuration = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Duration (in minutes)");
		lessonTiming = new JTextField(5);

		lessonDuration.add(instructions);
		lessonDuration.add(lessonTiming);
		frame.getContentPane().add(lessonDuration);
	}

	//provides a space and instructions for the user to enter an overview of the lesson
	public void lessonOverview(){
		lessonOverview = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Overview:");
		lessonDescription = new JTextArea(5, 20);
		lessonDescription.setLineWrap(true);

		JScrollPane scroll = new JScrollPane(lessonDescription);
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		lessonOverview.add(instructions);
		lessonOverview.add(scroll);
		frame.getContentPane().add(lessonOverview);
	}

	//provides all the buttons to add different components to the lesson such as points, 
	//materials, and preparation
	public void lessonButtons(){
		lessonButtons = new JPanel();

		JButton objectives = new JButton("Add a Lesson Objective");
		JButton evidence = new JButton("Add an Evidence Statement");
		JButton outcomes = new JButton("Add a Product Outcome");
		JButton materials = new JButton("Add a Lesson Material");
		JButton preparation = new JButton("Add a Preparation Point");
		JButton standards = new JButton("Add a Standard");
		JButton points = new JButton("Add New Point");

		objectives.addActionListener(this);
		evidence.addActionListener(this);
		outcomes.addActionListener(this);
		materials.addActionListener(this);
		preparation.addActionListener(this);
		standards.addActionListener(this);
		points.addActionListener(this);

		objectives.setActionCommand("objectives");
		evidence.setActionCommand("evidence");
		outcomes.setActionCommand("outcomes");
		materials.setActionCommand("materials");
		preparation.setActionCommand("preparation");
		standards.setActionCommand("standards");
		points.setActionCommand("points");

		lessonButtons.add(objectives);
		lessonButtons.add(evidence);
		lessonButtons.add(outcomes);
		lessonButtons.add(materials);
		lessonButtons.add(preparation);
		lessonButtons.add(standards);
		lessonButtons.add(points);

		frame.getContentPane().add(lessonButtons);
	}

	//provides new buttons on the unit screen to reflect that at least
	//one lesson has been created
	public void returnToUnit(){
		returnFromLesson = new JPanel();
		JButton finish = new JButton("Done");
		JButton add = new JButton("Add Another Lesson");

		finish.addActionListener(this);
		finish.setActionCommand("finish");
		add.addActionListener(this);
		add.setActionCommand("new");
		
		returnFromLesson.add(finish);
		returnFromLesson.add(add);
		frame.getContentPane().add(returnFromLesson);
	}

	//handles the transition from the lesson screen to the unit screen
	//when the user has finished editing a lesson
	public void handleLessonExit(){
		lessonName.setVisible(false);
		lessonDuration.setVisible(false);
		lessonOverview.setVisible(false);
		lessonButtons.setVisible(false);
		returnFromLesson.setVisible(false);
		
		if(creating) label.setText("Creating New Unit");
		else label.setText("Adding to Existing Unit");
		chooseCourse.setVisible(true);
		chooseUnit.setVisible(true);
		chooseUnitName.setVisible(true);
		chooseUnitDescription.setVisible(true);
		buttons.setVisible(true);
	}

	//adds a string encoding the information entered for a lesson into an array holding all 
	//the lessons made so far
	public void recordLesson(){
		//get user-entered information
		String title = lessonTitle.getText();
		String duration = lessonTiming.getText();
		String overview = lessonDescription.getText();

		//create a string to transform the user-entered information into bootstrap code
		String lessonEncoding = Strings.lessonOpen + Strings.lessonTitle + title + lessonTitleEnd + 
			Strings.lessonDuration + duration + lessonDurationEnd + Strings.lessonOverview + 
			overview + lessonOverviewEnd + lessonObjectivesStart + lessonObjectivesEnd + 
			lessonEvidenceStart + lessonEvidenceEnd + lessonOutcomesStart;

		//add all the lesson outcomes entered
		for(int i = 0; i < lessonOutcomes.size(); i++) lessonEncoding += lessonOutcomes.get(i);

		lessonEncoding += lessonOutcomesEnd + lessonStandardsStart + lessonStandardsEnd + 
		       lessonMaterialsStart;

		//add all the lesson materials entered
	        for(int i = 0; i < lessonMaterials.size(); i++){
			lessonEncoding += lessonMaterials.get(i);
		}

		lessonEncoding += lessonMaterialsEnd + lessonPreparationStart;

		//add all the preparation points entered
		for(int i = 0; i < preps.size(); i++) lessonEncoding += preps.get(i);
	       
		lessonEncoding += lessonPreparationEnd + pacingsList + openPoints;

		//add all the student/teacher points entered
		for(int i = 0; i < points.size(); i++){
			lessonEncoding += points.get(i);
		}

		lessonEncoding += closeLessonPoints;
		lessons.add(lessonEncoding);

		//reset lists of lesson points, materials, preparation, and outcomes for the next lesson
		points = new ArrayList<String>();
		lessonMaterials = new ArrayList<String>();
		preps = new ArrayList<String>();
		lessonOutcomes = new ArrayList<String>();
	}

	//open the correct file based on user-entered information about course and unit and write all
	//the necessary information to it so it can be compiled to a .html file
	public void createFile(){

		//get course and unit number
		String coursePath = course.getText();
		String unitPath = unit.getText();

		//create file path
		String path = "courses/" + coursePath + "/units/unit" + unitPath + "/the-unit.scrbl";

		//opens the file to overwrite any current contexts, and writes everything to it 
		if(creating){
			String unitTitle = name.getText();
			String unitDescription = description.getText();
			try{
				PrintWriter file = new PrintWriter(path, "UTF-8");
				file.print(header);
				file.print(titleBeginning);
				file.print(unitTitle);
				file.print(titleEnd);
				file.print(tags);
				file.print(unitOverview);
				file.print(unitLessonsOpen);
				file.print(unitDescriptionBegin);
				file.print(unitDescription);
				file.print(unitDescriptionEnd);
				printLessons(file);
				file.close();
			} catch (IOException e){ System.out.println("error!");}

		//opens the file to append to existing contents and writes the new lessons to it
		} else{
			try{
				FileWriter fw = new FileWriter(unitPath, true);
				BufferedWriter bw = new BufferedWriter(fw);
				PrintWriter file = new PrintWriter(bw);
				printLessons(file);
				file.close();
				bw.close();
				fw.close();
			} catch(IOException e){ System.out.println("error!");}
		}
	
	}

	//provides the instructions and spaces to enter a student point with a corresponding teacher
	//point as well as buttons to add a new point or return to the lesson
	public void setupPoints(){
		studentPoint = new JPanel();
		teacherPoint = new JPanel();
		returnFromPoints = new JPanel();

		student = new JTextArea(10, 25);
		teacher = new JTextArea(10, 25);
		student.setLineWrap(true);
		teacher.setLineWrap(true);

		JScrollPane scroll = new JScrollPane(student);
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		JScrollPane scroll2 = new JScrollPane(teacher);
		scroll2.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		JLabel stud = new JLabel("Enter Student Point:");
		JLabel teach = new JLabel("Enter Corresponding Teacher Point (optional):");

		JButton done = new JButton("Done");
		JButton add = new JButton("Add Another Point");

		done.addActionListener(this);
		add.addActionListener(this);

		done.setActionCommand("finis");
		add.setActionCommand("nouveau");

		studentPoint.add(stud);		
		studentPoint.add(scroll);
		teacherPoint.add(teach);
		teacherPoint.add(scroll2);
		returnFromPoints.add(done);
		returnFromPoints.add(add);

		frame.getContentPane().add(studentPoint);
		frame.getContentPane().add(teacherPoint);
		frame.getContentPane().add(returnFromPoints);
	}

	//given a file, prints all the lessons held in a list to the file, in order
	public void printLessons(PrintWriter file){
		for(int i = 0; i < lessons.size(); i++){	
			file.print(lessons.get(i));
		}
	}

	//gets the user-entered student and teacher points, encodes them to bootstrap code, and 
	//adds the combined point to an array of points for the current lesson
	public void recordPoint(){
		String stud = student.getText();
		String teach = teacher.getText();
		String point = openNewPoint + stud + openTeacherPart + teach + closePoint;
		points.add(point);
	}

	//provides the instructions and space to enter a material, and buttons provide the
	//ability to either add another material or return to the lesson
	public void setupMaterials(){
		materials = new JPanel();
		materialButtons = new JPanel();
		mater = new JTextField(20);	
		JLabel instructions = new JLabel("Enter a Lesson Material:");

		JButton done = new JButton("Done");
		JButton add = new JButton("Add Another Material");

		done.addActionListener(this);
		add.addActionListener(this);

		done.setActionCommand("fin");
		add.setActionCommand("newb");

		materials.add(instructions);
		materials.add(mater);

		materialButtons.add(done);
		materialButtons.add(add);

		frame.getContentPane().add(materials);
		frame.getContentPane().add(materialButtons);
	}

	//gets the user-entered material, encodes it to bootstrap code, and adds the material
	//to the array of materials for the current lesson
	public void recordMaterial(){
		String material = mater.getText();
		String record = itemStart + material + itemEnd;
		lessonMaterials.add(record);
	}

	//provides the space and instructions to enter a preparation point, and buttons 
	//provide the functionality to either add another preparation point or return to lesson
	public void setupPrep(){
		preppy = new JPanel();
		prepButtons = new JPanel();
		prePoint = new JTextField(30);
		JLabel instructions = new JLabel("Enter a Preparation Point:");

		JButton done = new JButton("Done");
		JButton add = new JButton("Add Another Preparation Point");

		done.addActionListener(this);
		add.addActionListener(this);

		done.setActionCommand("finished");
		add.setActionCommand("newly");

		preppy.add(instructions);
		preppy.add(prePoint);

		prepButtons.add(done);
		prepButtons.add(add);

		frame.getContentPane().add(preppy);
		frame.getContentPane().add(prepButtons);
	}

	//gets user-entered preparation point, encodes it to bootstrap, and adds it to the list
	//of preparation points for the current lesson
	public void recordPrep(){
		String record = itemStart + prePoint.getText() + itemEnd;
		preps.add(record);
	}

	//provides the instructions and space to enter a product outcome, and buttons provide
	//the functionality to either add another outcome or return to the lesson
	public void setupOutcome(){
		out = new JPanel();
		outButtons = new JPanel();
		outProd = new JTextField(40);
		JLabel instructions = new JLabel("Enter a Product Outcome:");

		JButton done = new JButton("Done");
		JButton add = new JButton("Add Another Product Outcome");

		done.addActionListener(this);
		add.addActionListener(this);

		done.setActionCommand("finally");
		add.setActionCommand("nebulus");

		out.add(instructions);
		out.add(outProd);
		outButtons.add(done);
		outButtons.add(add);

		frame.getContentPane().add(out);
		frame.getContentPane().add(outButtons);
	}

	//encodes the user-entered outcome to bootstrap code and adds it to the list of 
	//outcomes for the current lesson
	public void recordOutcome(){
		String record = itemStart + outProd.getText() + itemEnd;
		lessonOutcomes.add(record);
	}

	/**
	 * main method creates a new instance of CopyPasteGUI, whose constructor will run the GUI
	 */
	public static void main(String[] args){
		CopyPasteGUI window = new CopyPasteGUI();	
	}
}
