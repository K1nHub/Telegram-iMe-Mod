package io.grpc;

import io.grpc.ClientCall;
/* loaded from: classes6.dex */
public abstract class ForwardingClientCall<ReqT, RespT> extends PartialForwardingClientCall<ReqT, RespT> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.grpc.ClientCall
    public void start(ClientCall.Listener<RespT> listener, Metadata metadata) {
        delegate().start(listener, metadata);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.grpc.ClientCall
    public void sendMessage(ReqT reqt) {
        delegate().sendMessage(reqt);
    }
}
