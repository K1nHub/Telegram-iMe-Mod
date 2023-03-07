package io.grpc;
/* loaded from: classes3.dex */
public abstract class ManagedChannel extends Channel {
    public void enterIdle() {
    }

    public void resetConnectBackoff() {
    }

    public abstract ManagedChannel shutdownNow();

    public ConnectivityState getState(boolean z) {
        throw new UnsupportedOperationException("Not implemented");
    }

    public void notifyWhenStateChanged(ConnectivityState connectivityState, Runnable runnable) {
        throw new UnsupportedOperationException("Not implemented");
    }
}
