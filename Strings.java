
/**
 * This class contains the skeleton of a .scrbl file split up into 
 * 	strings that come between user entered input
 * These strings are used in the CopyPaste program to print to a 
 * 	.scrbl file and allow it to be compiled without interacting 
 * 	directly with all its quirks and annoyances
 */

public class Strings {

	public static final String header = "#lang APCSP/lib\n";
	public static final String titleBeginning = "@title{";
	public static final String titleEnd = "}\n";
	public static final String tags = "@declare-tags[]\n";
	public static final String unitOverview = "@unit-overview/auto[]{\n";
	public static final String unitDescriptionBegin = "@unit-descr{";
	public static final String unitDescriptionEnd = "}}}\n";
	public static final String unitLessonsOpen = "@unit-lessons{";
	public static final String lessonOpen = "@lesson/studteach[\n";
	public static final String lessonTitle = "#:title \"";
	public static final String lessonTitleEnd = "\"\n";
	public static final String lessonDuration = "#:duration \"";
	public static final String lessonDurationEnd = " minutes\"\n";
	public static final String lessonOverview = "#:overview \"";
	public static final String lessonOverviewEnd = "\"\n";
	public static final String lessonObjectivesStart = "#:learning-objectives @itemlist[";
	public static final String itemStart = "@item{";
	public static final String itemEnd = "} ";
	public static final String lessonObjectivesEnd = "]\n";
	public static final String lessonEvidenceStart = "#:evidence-statements @itemlist[";
	public static final String lessonEvidenceEnd = "]\n";
	public static final String lessonOutcomesStart = "#:product-outcomes @itemlist[";
	public static final String lessonOutcomesEnd = "]\n";
	public static final String lessonStandardsStart = "#:standards (list";
	public static final String lessonStandardsEnd = ")\n";
	public static final String lessonMaterialsStart = "#:materials @itemlist[";
	public static final String lessonMaterialsEnd = "]\n";
	public static final String lessonPreparationStart = "#:preparation @itemlist[";
	public static final String lessonPreparationEnd = "]\n";
	public static final String pacingsList = "#:pacings (list \n@pacing[#:type \"remediation\"]{@itemlist[@item{}]}\n"
			+ "@pacing[#:type \"misconception\"]{@itemlist[@item{}]}\n" + 
			"@pacing[#:type \"challenge\"]{@itemlist[@item{}]}\n)]{\n";
	public static final String openPoints = "@points[\n";
	public static final String openNewPoint = "@point{@student{";
	public static final String openTeacherPart = "}\n@teacher{";
	public static final String closePoint = "}}\n";
	public static final String closeLessonPoints = "]}\n";
}

