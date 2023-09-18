package io.grpc;

import java.util.concurrent.Executor;
/* loaded from: classes6.dex */
public abstract class CallCredentials {

    /* loaded from: classes6.dex */
    public static abstract class MetadataApplier {
        public abstract void apply(Metadata metadata);

        public abstract void fail(Status status);
    }

    /* loaded from: classes6.dex */
    public static abstract class RequestInfo {
    }

    public abstract void applyRequestMetadata(RequestInfo requestInfo, Executor executor, MetadataApplier metadataApplier);
}
