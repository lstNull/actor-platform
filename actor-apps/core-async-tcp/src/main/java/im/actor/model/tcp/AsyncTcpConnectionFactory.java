/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.tcp;

import im.actor.model.network.ConnectionEndpoint;
import im.actor.model.network.connection.AsyncConnection;
import im.actor.model.network.connection.AsyncConnectionFactory;
import im.actor.model.network.connection.AsyncConnectionInterface;

public class AsyncTcpConnectionFactory implements AsyncConnectionFactory {

    @Override
    public AsyncConnection createConnection(int connectionId, ConnectionEndpoint endpoint, AsyncConnectionInterface connectionInterface) {
        return new AsyncTcpConnection(connectionId, endpoint, connectionInterface);
    }
}
