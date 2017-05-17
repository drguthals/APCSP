import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.*;

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
	private ArrayList<String> lessons = new ArrayList<String>();
	private JPanel studentPoint;
	private JPanel teacherPoint;
	private JTextArea student;
	private JTextArea teacher;
	private JPanel returnFromPoints;
	private ArrayList<String> points = new ArrayList<String>();
	private JPanel materials;
	private JTextField mater;
	private ArrayList<String> lessonMaterials = new ArrayList<String>();
	private JPanel materialButtons;
	private ArrayList<String> preps = new ArrayList<String>();
	private JPanel preppy;
	private JPanel prepButtons;
	private JTextField prePoint;
	private ArrayList<String> lessonOutcomes = new ArrayList<String>();
	private JPanel out;
	private JPanel outButtons;
	private JTextField outProd;

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
		studentPoint = new JPanel();
		teacherPoint = new JPanel();
		materials = new JPanel();
		materialButtons = new JPanel();
		preppy = new JPanel();
		prepButtons = new JPanel();
		out = new JPanel();
		outButtons = new JPanel();

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
			chooseCourse.setVisible(false);
			chooseUnit.setVisible(false);
			chooseUnitName.setVisible(false);
			chooseUnitDescription.setVisible(false);
			buttons.setVisible(false);
			label.setText("the-unit.scrbl file has been created!");	
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
		} else if(e.getActionCommand().equals("points")){
			label.setText("Creating New Point");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupPoints();
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
		} else if(e.getActionCommand().equals("nouveau")){
			studentPoint.setVisible(false);
			teacherPoint.setVisible(false);
			returnFromPoints.setVisible(false);
			recordPoint();
			setupPoints();
		} else if(e.getActionCommand().equals("new")){
			recordLesson();
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			addLesson();
		} else if(e.getActionCommand().equals("materials")){
			label.setText("Adding a Material");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupMaterials();
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
		} else if(e.getActionCommand().equals("newb")){
			materials.setVisible(false);
			materialButtons.setVisible(false);
			recordMaterial();
			setupMaterials();
		} else if(e.getActionCommand().equals("preparation")){
			label.setText("Adding a Preparation Point");	
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupPrep();
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
		} else if(e.getActionCommand().equals("newly")){
			preppy.setVisible(false);
			prepButtons.setVisible(false);
			recordPrep();
			setupPrep();
		} else if(e.getActionCommand().equals("outcomes")){
			label.setText("Adding a Product Outcome");
			lessonName.setVisible(false);
			lessonDuration.setVisible(false);
			lessonOverview.setVisible(false);
			lessonButtons.setVisible(false);
			returnFromLesson.setVisible(false);
			setupOutcome();
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
		} else if(e.getActionCommand().equals("nebulus")){
			out.setVisible(false);
			outButtons.setVisible(false);
			recordOutcome();
			setupOutcome();
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
		description.setLineWrap(true);

		JScrollPane scroll = new JScrollPane(description);
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		chooseUnitDescription.add(instructions);
		chooseUnitDescription.add(scroll);

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
		lessonDescription.setLineWrap(true);

		JScrollPane scroll = new JScrollPane(lessonDescription);
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

		lessonOverview.add(instructions);
		lessonOverview.add(scroll);
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
		JButton add = new JButton("Add Another Lesson");

		finish.addActionListener(this);
		finish.setActionCommand("finish");
		add.addActionListener(this);
		add.setActionCommand("new");
		
		returnFromLesson.add(finish);
		returnFromLesson.add(add);
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
		String lessonEncoding = Strings.lessonOpen + Strings.lessonTitle + title + lessonTitleEnd + 
			Strings.lessonDuration + duration + lessonDurationEnd + Strings.lessonOverview + 
			overview + lessonOverviewEnd + lessonObjectivesStart + lessonObjectivesEnd + 
			lessonEvidenceStart + lessonEvidenceEnd + lessonOutcomesStart;

		for(int i = 0; i < lessonOutcomes.size(); i++) lessonEncoding += lessonOutcomes.get(i);

	        lessonEncoding += lessonOutcomesEnd + lessonStandardsStart + lessonStandardsEnd + 
		       lessonMaterialsStart;

	        for(int i = 0; i < lessonMaterials.size(); i++){
			lessonEncoding += lessonMaterials.get(i);
		}

		lessonEncoding += lessonMaterialsEnd + lessonPreparationStart;

		for(int i = 0; i < preps.size(); i++) lessonEncoding += preps.get(i);
	       
		lessonEncoding += lessonPreparationEnd + pacingsList + openPoints;

		for(int i = 0; i < points.size(); i++){
			lessonEncoding += points.get(i);
		}

		lessonEncoding += closeLessonPoints;
		lessons.add(lessonEncoding);

		points = new ArrayList<String>();
		lessonMaterials = new ArrayList<String>();
		preps = new ArrayList<String>();
		lessonOutcomes = new ArrayList<String>();
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

	public void printLessons(PrintWriter file){
		for(int i = 0; i < lessons.size(); i++){	
			file.print(lessons.get(i));
		}
	}

	public void recordPoint(){
		String stud = student.getText();
		String teach = teacher.getText();
		String point = openNewPoint + stud + openTeacherPart + teach + closePoint;
		points.add(point);
	}

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

	public void recordMaterial(){
		String material = mater.getText();
		String record = itemStart + material + itemEnd;
		lessonMaterials.add(record);
	}

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

	public void recordPrep(){
		String record = itemStart + prePoint.getText() + itemEnd;
		preps.add(record);
	}

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

	public void recordOutcome(){
		String record = itemStart + outProd.getText() + itemEnd;
		lessonOutcomes.add(record);
	}

	public static void main(String[] args){
		CopyPasteGUI window = new CopyPasteGUI();	
	}
}
