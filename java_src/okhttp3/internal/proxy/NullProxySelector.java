package okhttp3.internal.proxy;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
/* compiled from: NullProxySelector.kt */
/* loaded from: classes4.dex */
public final class NullProxySelector extends ProxySelector {
    public static final NullProxySelector INSTANCE = new NullProxySelector();

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    private NullProxySelector() {
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        List<Proxy> listOf;
        if (uri == null) {
            throw new IllegalArgumentException("uri must not be null".toString());
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Proxy.NO_PROXY);
        return listOf;
    }
}
