package io.grpc.internal;
/* loaded from: classes4.dex */
public final class DnsNameResolverProvider extends BaseDnsNameResolverProvider {
    static {
        Boolean.parseBoolean(System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_grpclb", "false"));
    }
}
