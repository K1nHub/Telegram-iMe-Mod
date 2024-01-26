package io.grpc.internal;

import io.grpc.LoadBalancerProvider;
/* loaded from: classes4.dex */
public final class PickFirstLoadBalancerProvider extends LoadBalancerProvider {
    @Override // io.grpc.LoadBalancerProvider
    public String getPolicyName() {
        return "pick_first";
    }

    @Override // io.grpc.LoadBalancerProvider
    public int getPriority() {
        return 5;
    }

    @Override // io.grpc.LoadBalancerProvider
    public boolean isAvailable() {
        return true;
    }
}
