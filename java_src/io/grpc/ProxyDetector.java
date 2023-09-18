package io.grpc;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes6.dex */
public interface ProxyDetector {
    ProxiedSocketAddress proxyFor(SocketAddress socketAddress) throws IOException;
}
