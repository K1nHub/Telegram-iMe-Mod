package com.google.firebase.firestore;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.firestore.FirebaseFirestoreSettings;
import com.google.firebase.firestore.auth.CredentialsProvider;
import com.google.firebase.firestore.auth.FirebaseAuthCredentialsProvider;
import com.google.firebase.firestore.core.DatabaseInfo;
import com.google.firebase.firestore.core.FirestoreClient;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.remote.FirestoreChannel;
import com.google.firebase.firestore.remote.GrpcMetadataProvider;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firebase.firestore.util.Preconditions;
import com.google.firebase.inject.Deferred;
/* loaded from: classes4.dex */
public class FirebaseFirestore {
    private final AsyncQueue asyncQueue;
    private volatile FirestoreClient client;
    private final Context context;
    private final CredentialsProvider credentialsProvider;
    private final DatabaseId databaseId;
    private final GrpcMetadataProvider metadataProvider;
    private final String persistenceKey;
    private FirebaseFirestoreSettings settings;

    /* loaded from: classes4.dex */
    public interface InstanceRegistry {
    }

    public static FirebaseFirestore getInstance() {
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        if (firebaseApp == null) {
            throw new IllegalStateException("You must call FirebaseApp.initializeApp first.");
        }
        return getInstance(firebaseApp, "(default)");
    }

    private static FirebaseFirestore getInstance(FirebaseApp firebaseApp, String str) {
        Preconditions.checkNotNull(firebaseApp, "Provided FirebaseApp must not be null.");
        FirestoreMultiDbComponent firestoreMultiDbComponent = (FirestoreMultiDbComponent) firebaseApp.get(FirestoreMultiDbComponent.class);
        Preconditions.checkNotNull(firestoreMultiDbComponent, "Firestore component is not present.");
        return firestoreMultiDbComponent.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FirebaseFirestore newInstance(Context context, FirebaseApp firebaseApp, Deferred<InternalAuthProvider> deferred, String str, InstanceRegistry instanceRegistry, GrpcMetadataProvider grpcMetadataProvider) {
        String projectId = firebaseApp.getOptions().getProjectId();
        if (projectId == null) {
            throw new IllegalArgumentException("FirebaseOptions.getProjectId() cannot be null");
        }
        DatabaseId forDatabase = DatabaseId.forDatabase(projectId, str);
        AsyncQueue asyncQueue = new AsyncQueue();
        return new FirebaseFirestore(context, forDatabase, firebaseApp.getName(), new FirebaseAuthCredentialsProvider(deferred), asyncQueue, firebaseApp, instanceRegistry, grpcMetadataProvider);
    }

    FirebaseFirestore(Context context, DatabaseId databaseId, String str, CredentialsProvider credentialsProvider, AsyncQueue asyncQueue, FirebaseApp firebaseApp, InstanceRegistry instanceRegistry, GrpcMetadataProvider grpcMetadataProvider) {
        this.context = (Context) Preconditions.checkNotNull(context);
        this.databaseId = (DatabaseId) Preconditions.checkNotNull((DatabaseId) Preconditions.checkNotNull(databaseId));
        new UserDataReader(databaseId);
        this.persistenceKey = (String) Preconditions.checkNotNull(str);
        this.credentialsProvider = (CredentialsProvider) Preconditions.checkNotNull(credentialsProvider);
        this.asyncQueue = (AsyncQueue) Preconditions.checkNotNull(asyncQueue);
        this.metadataProvider = grpcMetadataProvider;
        this.settings = new FirebaseFirestoreSettings.Builder().build();
    }

    private void ensureClientConfigured() {
        if (this.client != null) {
            return;
        }
        synchronized (this.databaseId) {
            if (this.client != null) {
                return;
            }
            this.client = new FirestoreClient(this.context, new DatabaseInfo(this.databaseId, this.persistenceKey, this.settings.getHost(), this.settings.isSslEnabled()), this.settings, this.credentialsProvider, this.asyncQueue, this.metadataProvider);
        }
    }

    public CollectionReference collection(String str) {
        Preconditions.checkNotNull(str, "Provided collection path must not be null.");
        ensureClientConfigured();
        return new CollectionReference(ResourcePath.fromString(str), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirestoreClient getClient() {
        return this.client;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatabaseId getDatabaseId() {
        return this.databaseId;
    }

    @Keep
    static void setClientLanguage(String str) {
        FirestoreChannel.setClientLanguage(str);
    }
}
