package io.grpc.stub;

import com.google.common.base.Preconditions;
import io.grpc.CallCredentials;
import io.grpc.CallOptions;
import io.grpc.Channel;
import io.grpc.stub.AbstractStub;
import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public abstract class AbstractStub<S extends AbstractStub<S>> {
    private final CallOptions callOptions;
    private final Channel channel;

    /* loaded from: classes4.dex */
    public interface StubFactory<T extends AbstractStub<T>> {
        T newStub(Channel channel, CallOptions callOptions);
    }

    protected abstract S build(Channel channel, CallOptions callOptions);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractStub(Channel channel, CallOptions callOptions) {
        this.channel = (Channel) Preconditions.checkNotNull(channel, "channel");
        this.callOptions = (CallOptions) Preconditions.checkNotNull(callOptions, "callOptions");
    }

    public final CallOptions getCallOptions() {
        return this.callOptions;
    }

    public final S withExecutor(Executor executor) {
        return build(this.channel, this.callOptions.withExecutor(executor));
    }

    public final S withCallCredentials(CallCredentials callCredentials) {
        return build(this.channel, this.callOptions.withCallCredentials(callCredentials));
    }
}
