package io.grpc.internal;
/* loaded from: classes6.dex */
public interface BackoffPolicy {

    /* loaded from: classes6.dex */
    public interface Provider {
        BackoffPolicy get();
    }

    long nextBackoffNanos();
}
