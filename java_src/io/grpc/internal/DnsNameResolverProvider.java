package io.grpc.internal;
/* loaded from: classes4.dex */
public final class DnsNameResolverProvider extends BaseDnsNameResolverProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final boolean SRV_ENABLED = Boolean.parseBoolean(System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_grpclb", "false"));

    @Override // io.grpc.NameResolverProvider
    public int priority() {
        return 5;
    }

    @Override // io.grpc.internal.BaseDnsNameResolverProvider
    protected boolean isSrvEnabled() {
        return SRV_ENABLED;
    }
}
