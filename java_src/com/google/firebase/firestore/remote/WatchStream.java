package com.google.firebase.firestore.remote;

import com.google.firebase.firestore.local.TargetData;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firestore.p021v1.FirestoreGrpc;
import com.google.firestore.p021v1.ListenRequest;
import com.google.firestore.p021v1.ListenResponse;
import com.google.protobuf.ByteString;
import java.util.Map;
/* loaded from: classes3.dex */
public class WatchStream extends AbstractStream<ListenRequest, ListenResponse, Callback> {
    public static final ByteString EMPTY_RESUME_TOKEN = ByteString.EMPTY;
    private final RemoteSerializer serializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface Callback extends Stream$StreamCallback {
        void onWatchChange(SnapshotVersion snapshotVersion, WatchChange watchChange);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WatchStream(FirestoreChannel firestoreChannel, AsyncQueue asyncQueue, RemoteSerializer remoteSerializer, Callback callback) {
        super(firestoreChannel, FirestoreGrpc.getListenMethod(), asyncQueue, AsyncQueue.TimerId.LISTEN_STREAM_CONNECTION_BACKOFF, AsyncQueue.TimerId.LISTEN_STREAM_IDLE, callback);
        this.serializer = remoteSerializer;
    }

    public void watchQuery(TargetData targetData) {
        Assert.hardAssert(isOpen(), "Watching queries requires an open stream", new Object[0]);
        ListenRequest.Builder addTarget = ListenRequest.newBuilder().setDatabase(this.serializer.databaseName()).setAddTarget(this.serializer.encodeTarget(targetData));
        Map<String, String> encodeListenRequestLabels = this.serializer.encodeListenRequestLabels(targetData);
        if (encodeListenRequestLabels != null) {
            addTarget.putAllLabels(encodeListenRequestLabels);
        }
        writeRequest(addTarget.build());
    }

    public void unwatchTarget(int i) {
        Assert.hardAssert(isOpen(), "Unwatching targets requires an open stream", new Object[0]);
        writeRequest(ListenRequest.newBuilder().setDatabase(this.serializer.databaseName()).setRemoveTarget(i).build());
    }

    @Override // com.google.firebase.firestore.remote.AbstractStream
    public void onNext(ListenResponse listenResponse) {
        this.backoff.reset();
        WatchChange decodeWatchChange = this.serializer.decodeWatchChange(listenResponse);
        ((Callback) this.listener).onWatchChange(this.serializer.decodeVersionFromListenResponse(listenResponse), decodeWatchChange);
    }
}
