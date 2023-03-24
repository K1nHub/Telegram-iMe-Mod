package io.grpc;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class CallCredentials {

    /* loaded from: classes.dex */
    public static abstract class MetadataApplier {
        public abstract void apply(Metadata metadata);

        public abstract void fail(Status status);
    }

    /* loaded from: classes.dex */
    public static abstract class RequestInfo {
    }

    public abstract void applyRequestMetadata(RequestInfo requestInfo, Executor executor, MetadataApplier metadataApplier);
}
