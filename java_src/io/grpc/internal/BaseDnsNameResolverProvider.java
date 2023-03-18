package io.grpc.internal;

import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import io.grpc.InternalServiceProviders;
import io.grpc.NameResolver;
import io.grpc.NameResolverProvider;
import java.net.URI;
/* loaded from: classes4.dex */
public abstract class BaseDnsNameResolverProvider extends NameResolverProvider {
    @Override // io.grpc.NameResolver.Factory
    public String getDefaultScheme() {
        return "dns";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.NameResolverProvider
    public boolean isAvailable() {
        return true;
    }

    protected abstract boolean isSrvEnabled();

    @Override // io.grpc.NameResolver.Factory
    public DnsNameResolver newNameResolver(URI uri, NameResolver.Args args) {
        if ("dns".equals(uri.getScheme())) {
            String str = (String) Preconditions.checkNotNull(uri.getPath(), "targetPath");
            Preconditions.checkArgument(str.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", str, uri);
            return new DnsNameResolver(uri.getAuthority(), str.substring(1), args, GrpcUtil.SHARED_CHANNEL_EXECUTOR, Stopwatch.createUnstarted(), InternalServiceProviders.isAndroid(getClass().getClassLoader()), isSrvEnabled());
        }
        return null;
    }
}
