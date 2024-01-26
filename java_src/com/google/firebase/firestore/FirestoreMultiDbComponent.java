package com.google.firebase.firestore;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.firestore.remote.GrpcMetadataProvider;
import com.google.firebase.inject.Deferred;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FirestoreMultiDbComponent implements FirebaseAppLifecycleListener {
    private final FirebaseApp app;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirestoreMultiDbComponent(Context context, FirebaseApp firebaseApp, Deferred<InternalAuthProvider> deferred, GrpcMetadataProvider grpcMetadataProvider) {
        new HashMap();
        this.app = firebaseApp;
        firebaseApp.addLifecycleEventListener(this);
    }
}
