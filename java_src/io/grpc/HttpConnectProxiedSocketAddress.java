package io.grpc;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
/* loaded from: classes.dex */
public final class HttpConnectProxiedSocketAddress extends ProxiedSocketAddress {
    private final String password;
    private final SocketAddress proxyAddress;
    private final InetSocketAddress targetAddress;
    private final String username;

    private HttpConnectProxiedSocketAddress(SocketAddress socketAddress, InetSocketAddress inetSocketAddress, String str, String str2) {
        Preconditions.checkNotNull(socketAddress, "proxyAddress");
        Preconditions.checkNotNull(inetSocketAddress, "targetAddress");
        if (socketAddress instanceof InetSocketAddress) {
            Preconditions.checkState(!((InetSocketAddress) socketAddress).isUnresolved(), "The proxy address %s is not resolved", socketAddress);
        }
        this.proxyAddress = socketAddress;
        this.targetAddress = inetSocketAddress;
        this.username = str;
        this.password = str2;
    }

    public String getPassword() {
        return this.password;
    }

    public String getUsername() {
        return this.username;
    }

    public SocketAddress getProxyAddress() {
        return this.proxyAddress;
    }

    public InetSocketAddress getTargetAddress() {
        return this.targetAddress;
    }

    public boolean equals(Object obj) {
        if (obj instanceof HttpConnectProxiedSocketAddress) {
            HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) obj;
            return Objects.equal(this.proxyAddress, httpConnectProxiedSocketAddress.proxyAddress) && Objects.equal(this.targetAddress, httpConnectProxiedSocketAddress.targetAddress) && Objects.equal(this.username, httpConnectProxiedSocketAddress.username) && Objects.equal(this.password, httpConnectProxiedSocketAddress.password);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.proxyAddress, this.targetAddress, this.username, this.password);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("proxyAddr", this.proxyAddress).add("targetAddr", this.targetAddress).add("username", this.username).add("hasPassword", this.password != null).toString();
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private String password;
        private SocketAddress proxyAddress;
        private InetSocketAddress targetAddress;
        private String username;

        private Builder() {
        }

        public Builder setProxyAddress(SocketAddress socketAddress) {
            this.proxyAddress = (SocketAddress) Preconditions.checkNotNull(socketAddress, "proxyAddress");
            return this;
        }

        public Builder setTargetAddress(InetSocketAddress inetSocketAddress) {
            this.targetAddress = (InetSocketAddress) Preconditions.checkNotNull(inetSocketAddress, "targetAddress");
            return this;
        }

        public Builder setUsername(String str) {
            this.username = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.password = str;
            return this;
        }

        public HttpConnectProxiedSocketAddress build() {
            return new HttpConnectProxiedSocketAddress(this.proxyAddress, this.targetAddress, this.username, this.password);
        }
    }
}
