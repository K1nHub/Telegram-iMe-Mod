package io.grpc;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes.dex */
public interface ProxyDetector {
    ProxiedSocketAddress proxyFor(SocketAddress socketAddress) throws IOException;
}
