package io.grpc;

import io.grpc.ManagedChannelBuilder;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public abstract class ManagedChannelBuilder<T extends ManagedChannelBuilder<T>> {
    public abstract ManagedChannel build();

    public static ManagedChannelBuilder<?> forTarget(String str) {
        return ManagedChannelProvider.provider().builderForTarget(str);
    }

    public T usePlaintext() {
        throw new UnsupportedOperationException();
    }

    public T keepAliveTime(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }
}
