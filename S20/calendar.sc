import edu.holycross.shot.coursecal._
import java.io.PrintWriter



def schedule = {
  val pg = "ghpages/schedule.md"
  val sched = Schedule("ada-topics2.txt", "ada2.yaml")
  val md = sched.markdownCalendar
  new PrintWriter(pg) { write(md); close }
  println("Schedule written to " + pg)
}


println("\nWrite a new schedule to ghpages directory:")
println("\tschedule")
