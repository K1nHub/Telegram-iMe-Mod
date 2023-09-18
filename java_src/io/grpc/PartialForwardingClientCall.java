package io.grpc;

import com.google.common.base.MoreObjects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public abstract class PartialForwardingClientCall<ReqT, RespT> extends ClientCall<ReqT, RespT> {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ClientCall<?, ?> delegate();

    @Override // io.grpc.ClientCall
    public void request(int i) {
        delegate().request(i);
    }

    @Override // io.grpc.ClientCall
    public void halfClose() {
        delegate().halfClose();
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("delegate", delegate()).toString();
    }
}
