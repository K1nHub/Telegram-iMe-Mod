package com.google.firebase.firestore.remote;

import io.grpc.Status;
/* loaded from: classes4.dex */
public interface Stream$StreamCallback {
    void onClose(Status status);

    void onOpen();
}
