import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.io.IOException;

public class CopyPasteGUI extends Strings implements ActionListener{

	private JFrame frame;
	private JPanel contentPane;
	private JLabel label;
	private JButton create;
	private JButton add;
	private JTextField course;
	private String filePath;
	private JLabel courseInstructions;
	private JPanel choose;
	private JPanel chooseCourse;
	private JPanel chooseUnit;
	private JPanel chooseUnitName;
	private JPanel chooseUnitDescription;
	private JPanel buttons;
	private JPanel lessonName;
	private JPanel lessonDuration;
	private JPanel lessonOverview;
	private JPanel lessonButtons;
	private JPanel returnFromLesson;
	private int numLessons = 0;
	private JTextField lessonTitle;
	private JTextField lessonTiming;
	private JTextArea lessonDescription;
	private String code;
	private boolean creating;
	private JTextField unit;
	private JTextField name;
	private JTextArea description;


	public CopyPasteGUI(){
		createGUI();
	}

	public void createGUI(){
		frame = new JFrame("Bootstrap Editor");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		frame.getContentPane().setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.PAGE_AXIS));
	
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

		choose = new JPanel();
		choose.setOpaque(true);

		label = new JLabel("Welcome to the Bootstrap GUI!");
	

		create = new JButton("Create New Unit");
		add = new JButton("Add a Lesson to an Existing Unit");

		create.addActionListener(this);
		add.addActionListener(this);

		create.setActionCommand("create");
		add.setActionCommand("add");

		choose.add(label);
		choose.add(create);
		choose.add(add);

		frame.getContentPane().add(choose);		
		frame.setSize(800, 800);
		frame.setVisible(true);
	}

	public void actionPerformed(ActionEvent e){
		if(e.getActionCommand().equals("create")){
			label.setText("Creating New Unit");
			creating = true;
		        createUnit();
		} else if(e.getActionCommand().equals("add")){
			label.setText("Adding to Existing Unit");
			creating = false;
			addToUnit();
		} else if(e.getActionCommand().equals("done")){
			choose.setVisible(false);
			chooseCourse.setVisible(false);
			chooseUnit.setVisible(false);
			chooseUnitName.setVisible(false);
			chooseUnitDescription.setVisible(false);
			buttons.setVisible(false);	
			createFile();
		} else if(e.getActionCommand().equals("lesson")){
			label.setText("Creating New Lesson");
			chooseCourse.setVisible(false);
			chooseUnit.setVisible(false);
			chooseUnitName.setVisible(false);
			chooseUnitDescription.setVisible(false);
			buttons.setVisible(false);
			addLesson();
		} else if(e.getActionCommand().equals("finish")){
			handleLessonExit();
			recordLesson();
		}
		create.setVisible(false);
		add.setVisible(false);
	}

	public void createUnit(){
		courseName();
		unitNumber();
		nameUnit();
		unitDescription();
		unitButtons();
	}

	public void addToUnit(){
		courseName();
		unitNumber();
		unitButtons();	
	}

	public void courseName(){
		courseInstructions = new JLabel("What course do you want to edit? (bs1, bs2, or bs3)");
		course = new JTextField(10);

		chooseCourse.add(courseInstructions);
		chooseCourse.add(course);
		
		frame.getContentPane().add(chooseCourse);	
	}

	public void unitNumber(){
		JLabel instructions = new JLabel("What unit number do you want to edit? (1-9)");
		unit = new JTextField(10);

		chooseUnit.add(instructions);
		chooseUnit.add(unit);

		frame.getContentPane().add(chooseUnit);

	}

	public void nameUnit(){
		JLabel instructions = new JLabel("Enter Unit Title:");
		name = new JTextField(20);

		chooseUnitName.add(instructions);
		chooseUnitName.add(name);

		frame.getContentPane().add(chooseUnitName);

	}

	public void unitDescription(){
		JLabel instructions = new JLabel("Enter Unit Description:");
		description = new JTextArea(10, 30);

		chooseUnitDescription.add(instructions);
		chooseUnitDescription.add(description);

		frame.getContentPane().add(chooseUnitDescription);
	}

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

	public void addLesson(){
		numLessons++;
		nameLesson();
		setDuration();
		lessonOverview();
		lessonButtons();
		returnToUnit();
	}

	public void nameLesson(){
		lessonName = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Title:");
		lessonTitle = new JTextField(20);

		lessonName.add(instructions);
		lessonName.add(lessonTitle);
		frame.getContentPane().add(lessonName);
	}

	public void setDuration(){
		lessonDuration = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Duration (in minutes)");
		lessonTiming = new JTextField(5);

		lessonDuration.add(instructions);
		lessonDuration.add(lessonTiming);
		frame.getContentPane().add(lessonDuration);
	}

	public void lessonOverview(){
		lessonOverview = new JPanel();
		JLabel instructions = new JLabel("Enter Lesson Overview:");
		lessonDescription = new JTextArea(5, 20);

		lessonOverview.add(instructions);
		lessonOverview.add(lessonDescription);
		frame.getContentPane().add(lessonOverview);
	}

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

	public void returnToUnit(){
		returnFromLesson = new JPanel();
		JButton finish = new JButton("Done");
		finish.addActionListener(this);
		finish.setActionCommand("finish");
		
		returnFromLesson.add(finish);
		frame.getContentPane().add(returnFromLesson);
	}

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

	public void recordLesson(){
		String title = lessonTitle.getText();
		String duration = lessonTiming.getText();
		String overview = lessonDescription.getText();
	}

	public void createFile(){
		String coursePath = course.getText();
		String unitPath = unit.getText();
		String path = "courses/" + coursePath + "/units/unit" + unitPath + "/the-unit.scrbl";
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

	public void printLessons(PrintWriter file){

	}

	public static void main(String[] args){
		CopyPasteGUI window = new CopyPasteGUI();	
	}
}
