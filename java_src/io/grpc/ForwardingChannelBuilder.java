package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.ForwardingChannelBuilder;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public abstract class ForwardingChannelBuilder<T extends ForwardingChannelBuilder<T>> extends ManagedChannelBuilder<T> {
    protected abstract ManagedChannelBuilder<?> delegate();

    protected final T thisT() {
        return this;
    }

    @Override // io.grpc.ManagedChannelBuilder
    public T usePlaintext() {
        delegate().usePlaintext();
        return thisT();
    }

    @Override // io.grpc.ManagedChannelBuilder
    public T keepAliveTime(long j, TimeUnit timeUnit) {
        delegate().keepAliveTime(j, timeUnit);
        return thisT();
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("delegate", delegate()).toString();
    }
}
