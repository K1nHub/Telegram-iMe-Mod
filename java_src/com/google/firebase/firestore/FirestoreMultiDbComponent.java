package com.google.firebase.firestore;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseAppLifecycleListener;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.remote.GrpcMetadataProvider;
import com.google.firebase.inject.Deferred;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class FirestoreMultiDbComponent implements FirebaseAppLifecycleListener, FirebaseFirestore.InstanceRegistry {
    private final FirebaseApp app;
    private final Deferred<InternalAuthProvider> authProvider;
    private final Context context;
    private final Map<String, FirebaseFirestore> instances = new HashMap();
    private final GrpcMetadataProvider metadataProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirestoreMultiDbComponent(Context context, FirebaseApp firebaseApp, Deferred<InternalAuthProvider> deferred, GrpcMetadataProvider grpcMetadataProvider) {
        this.context = context;
        this.app = firebaseApp;
        this.authProvider = deferred;
        this.metadataProvider = grpcMetadataProvider;
        firebaseApp.addLifecycleEventListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized FirebaseFirestore get(String str) {
        FirebaseFirestore firebaseFirestore;
        firebaseFirestore = this.instances.get(str);
        if (firebaseFirestore == null) {
            firebaseFirestore = FirebaseFirestore.newInstance(this.context, this.app, this.authProvider, str, this, this.metadataProvider);
            this.instances.put(str, firebaseFirestore);
        }
        return firebaseFirestore;
    }
}
