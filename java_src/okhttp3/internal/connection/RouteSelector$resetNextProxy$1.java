package okhttp3.internal.connection;

import java.net.Proxy;
import java.net.URI;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RouteSelector.kt */
/* loaded from: classes4.dex */
public final class RouteSelector$resetNextProxy$1 extends Lambda implements Function0<List<? extends Proxy>> {
    final /* synthetic */ Proxy $proxy;
    final /* synthetic */ HttpUrl $url;
    final /* synthetic */ RouteSelector this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteSelector$resetNextProxy$1(RouteSelector routeSelector, Proxy proxy, HttpUrl httpUrl) {
        super(0);
        this.this$0 = routeSelector;
        this.$proxy = proxy;
        this.$url = httpUrl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Proxy> invoke() {
        Address address;
        List<? extends Proxy> listOf;
        Proxy proxy = this.$proxy;
        if (proxy != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(proxy);
            return listOf;
        }
        URI uri = this.$url.uri();
        if (uri.getHost() == null) {
            return Util.immutableListOf(Proxy.NO_PROXY);
        }
        address = this.this$0.address;
        List<Proxy> select = address.proxySelector().select(uri);
        return select == null || select.isEmpty() ? Util.immutableListOf(Proxy.NO_PROXY) : Util.toImmutableList(select);
    }
}
