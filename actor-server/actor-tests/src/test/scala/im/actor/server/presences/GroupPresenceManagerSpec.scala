package im.actor.server.presences

import scala.concurrent.ExecutionContext
import scala.concurrent.duration._

import akka.testkit.TestProbe
import akka.util.Timeout
import org.scalatest.time.{ Seconds, Span }

import im.actor.server.ActorSuite
import im.actor.server.db.DbExtension

class GroupPresenceManagerSpec extends ActorSuite {
  behavior of "GroupPresenceManager"

  it should "subscribe/unsubscribe to group presences" in e1

  import GroupPresenceManager._

  implicit val ec: ExecutionContext = system.dispatcher

  override implicit val patienceConfig = PatienceConfig(timeout = Span(5, Seconds))
  implicit val timeout: Timeout = Timeout(5.seconds)

  DbExtension(system).clean()
  DbExtension(system).migrate()

  implicit val userPresenceRegion = PresenceManager.startRegion()
  implicit val region = GroupPresenceManager.startRegion()

  val probe = TestProbe()
  val userId = 1
  val groupId = 100

  def e1() = {
    whenReady(subscribe(groupId, probe.ref)) { _ ⇒ }
    GroupPresenceManager.notifyGroupUserAdded(groupId, userId)

    PresenceManager.presenceSetOnline(userId, 1000)

    probe.expectMsgPF() {
      case GroupPresenceState(100, 1) ⇒
    }

    probe.expectMsgPF() {
      case GroupPresenceState(100, 0) ⇒
    }

    whenReady(unsubscribe(groupId, probe.ref)) { _ ⇒ }
    probe.expectNoMsg()
  }
}

