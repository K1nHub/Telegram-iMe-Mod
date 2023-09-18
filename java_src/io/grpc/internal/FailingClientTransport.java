package io.grpc.internal;

import com.google.common.base.Preconditions;
import io.grpc.CallOptions;
import io.grpc.InternalLogId;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class FailingClientTransport implements ClientTransport {
    final Status error;
    private final ClientStreamListener.RpcProgress rpcProgress;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FailingClientTransport(Status status, ClientStreamListener.RpcProgress rpcProgress) {
        Preconditions.checkArgument(!status.isOk(), "error must not be OK");
        this.error = status;
        this.rpcProgress = rpcProgress;
    }

    @Override // io.grpc.internal.ClientTransport
    public ClientStream newStream(MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, CallOptions callOptions) {
        return new FailingClientStream(this.error, this.rpcProgress);
    }

    @Override // io.grpc.InternalWithLogId
    public InternalLogId getLogId() {
        throw new UnsupportedOperationException("Not a real transport");
    }
}
