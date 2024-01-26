package io.grpc.util;

import io.grpc.LoadBalancerProvider;
/* loaded from: classes4.dex */
public final class SecretRoundRobinLoadBalancerProvider$Provider extends LoadBalancerProvider {
    @Override // io.grpc.LoadBalancerProvider
    public String getPolicyName() {
        return "round_robin";
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
