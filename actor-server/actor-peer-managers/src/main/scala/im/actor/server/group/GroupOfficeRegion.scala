package im.actor.server.group

import akka.actor.{ ActorRef, ActorSystem, Props }
import akka.contrib.pattern.{ ClusterSharding, ShardRegion }
import slick.driver.PostgresDriver.api._

import im.actor.server.push.SeqUpdatesManagerRegion
import im.actor.server.user.UserOfficeRegion
import im.actor.server.util.FileStorageAdapter

trait GroupCommand {
  val groupId: Int
}

object GroupOfficeRegion {
  private val idExtractor: ShardRegion.IdExtractor = {
    case c: GroupCommand ⇒ (c.groupId.toString, c)
  }

  private val shardResolver: ShardRegion.ShardResolver = msg ⇒ msg match {
    case c: GroupCommand ⇒ (c.groupId % 100).toString // TODO: configurable
  }

  private def start(props: Option[Props])(implicit system: ActorSystem): GroupOfficeRegion =
    GroupOfficeRegion(ClusterSharding(system).start(
      typeName = "GroupOffice",
      entryProps = props,
      idExtractor = idExtractor,
      shardResolver = shardResolver
    ))

  def start()(
    implicit
    system:              ActorSystem,
    db:                  Database,
    seqUpdManagerRegion: SeqUpdatesManagerRegion,
    userOfficeRegion:    UserOfficeRegion,
    fsAdapter:           FileStorageAdapter
  ): GroupOfficeRegion = start(Some(GroupOfficeActor.props))

  def startProxy()(implicit system: ActorSystem): GroupOfficeRegion =
    start(None)
}

case class GroupOfficeRegion(ref: ActorRef)