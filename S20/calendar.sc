import edu.holycross.shot.coursecal._

val sched = Schedule("ada-topics.txt", "ada.yaml")
val md = sched.markdownCalendar

import java.io.PrintWriter

new PrintWriter("ghpages/schedule.md") { write(md); close }
