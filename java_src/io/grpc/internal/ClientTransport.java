package io.grpc.internal;

import io.grpc.CallOptions;
import io.grpc.InternalInstrumented;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public interface ClientTransport extends InternalInstrumented<Object> {

    /* loaded from: classes3.dex */
    public interface PingCallback {
        void onFailure(Throwable th);

        void onSuccess(long j);
    }

    ClientStream newStream(MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, CallOptions callOptions);

    void ping(PingCallback pingCallback, Executor executor);
}
