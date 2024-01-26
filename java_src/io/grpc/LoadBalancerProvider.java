package io.grpc;

import com.google.common.base.MoreObjects;
/* loaded from: classes4.dex */
public abstract class LoadBalancerProvider extends LoadBalancer$Factory {
    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract String getPolicyName();

    public abstract int getPriority();

    public abstract boolean isAvailable();

    static {
        NameResolver$ConfigOrError.fromConfig(new UnknownConfig());
    }

    public final String toString() {
        return MoreObjects.toStringHelper(this).add("policy", getPolicyName()).add("priority", getPriority()).add("available", isAvailable()).toString();
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* loaded from: classes4.dex */
    private static final class UnknownConfig {
        public String toString() {
            return "service config is unused";
        }

        UnknownConfig() {
        }
    }
}
