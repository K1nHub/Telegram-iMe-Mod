package com.google.firebase.firestore.remote;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.firestore.auth.CredentialsProvider;
import com.google.firebase.firestore.util.Logger;
import io.grpc.CallCredentials;
import io.grpc.Metadata;
import io.grpc.Status;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
final class FirestoreCallCredentials extends CallCredentials {
    private static final Metadata.Key<String> AUTHORIZATION_HEADER = Metadata.Key.m694of(RtspHeaders.AUTHORIZATION, Metadata.ASCII_STRING_MARSHALLER);
    private final CredentialsProvider credentialsProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirestoreCallCredentials(CredentialsProvider credentialsProvider) {
        this.credentialsProvider = credentialsProvider;
    }

    @Override // io.grpc.CallCredentials
    public void applyRequestMetadata(CallCredentials.RequestInfo requestInfo, Executor executor, final CallCredentials.MetadataApplier metadataApplier) {
        this.credentialsProvider.getToken().addOnSuccessListener(executor, new OnSuccessListener() { // from class: com.google.firebase.firestore.remote.FirestoreCallCredentials$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirestoreCallCredentials.lambda$applyRequestMetadata$0(CallCredentials.MetadataApplier.this, (String) obj);
            }
        }).addOnFailureListener(executor, new OnFailureListener() { // from class: com.google.firebase.firestore.remote.FirestoreCallCredentials$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FirestoreCallCredentials.lambda$applyRequestMetadata$1(CallCredentials.MetadataApplier.this, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyRequestMetadata$0(CallCredentials.MetadataApplier metadataApplier, String str) {
        Logger.debug("FirestoreCallCredentials", "Successfully fetched token.", new Object[0]);
        Metadata metadata = new Metadata();
        if (str != null) {
            Metadata.Key<String> key = AUTHORIZATION_HEADER;
            metadata.put(key, "Bearer " + str);
        }
        metadataApplier.apply(metadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyRequestMetadata$1(CallCredentials.MetadataApplier metadataApplier, Exception exc) {
        if (exc instanceof FirebaseApiNotAvailableException) {
            Logger.debug("FirestoreCallCredentials", "Firebase Auth API not available, not using authentication.", new Object[0]);
            metadataApplier.apply(new Metadata());
            return;
        }
        Logger.warn("FirestoreCallCredentials", "Failed to get token: %s.", exc);
        metadataApplier.fail(Status.UNAUTHENTICATED.withCause(exc));
    }
}
