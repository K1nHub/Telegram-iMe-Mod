package com.google.firebase.firestore.auth;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.internal.IdTokenListener;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Listener;
import com.google.firebase.firestore.util.Logger;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
/* loaded from: classes4.dex */
public final class FirebaseAuthCredentialsProvider extends CredentialsProvider {
    private Listener<User> changeListener;
    private boolean forceRefresh;
    private final IdTokenListener idTokenListener = new IdTokenListener(this) { // from class: com.google.firebase.firestore.auth.FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda1
    };
    private InternalAuthProvider internalAuthProvider;
    private int tokenCounter;

    public FirebaseAuthCredentialsProvider(Deferred<InternalAuthProvider> deferred) {
        deferred.whenAvailable(new Deferred.DeferredHandler() { // from class: com.google.firebase.firestore.auth.FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda2
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void handle(Provider provider) {
                FirebaseAuthCredentialsProvider.this.lambda$new$1(provider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Provider provider) {
        synchronized (this) {
            this.internalAuthProvider = (InternalAuthProvider) provider.get();
            onIdTokenChanged();
            this.internalAuthProvider.addIdTokenListener(this.idTokenListener);
        }
    }

    @Override // com.google.firebase.firestore.auth.CredentialsProvider
    public synchronized Task<String> getToken() {
        InternalAuthProvider internalAuthProvider = this.internalAuthProvider;
        if (internalAuthProvider == null) {
            return Tasks.forException(new FirebaseApiNotAvailableException("auth is not available"));
        }
        Task<GetTokenResult> accessToken = internalAuthProvider.getAccessToken(this.forceRefresh);
        this.forceRefresh = false;
        final int i = this.tokenCounter;
        return accessToken.continueWithTask(Executors.DIRECT_EXECUTOR, new Continuation() { // from class: com.google.firebase.firestore.auth.FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task lambda$getToken$2;
                lambda$getToken$2 = FirebaseAuthCredentialsProvider.this.lambda$getToken$2(i, task);
                return lambda$getToken$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$getToken$2(int i, Task task) throws Exception {
        synchronized (this) {
            if (i != this.tokenCounter) {
                Logger.debug("FirebaseAuthCredentialsProvider", "getToken aborted due to token change", new Object[0]);
                return getToken();
            } else if (task.isSuccessful()) {
                return Tasks.forResult(((GetTokenResult) task.getResult()).getToken());
            } else {
                return Tasks.forException(task.getException());
            }
        }
    }

    @Override // com.google.firebase.firestore.auth.CredentialsProvider
    public synchronized void invalidateToken() {
        this.forceRefresh = true;
    }

    @Override // com.google.firebase.firestore.auth.CredentialsProvider
    public synchronized void setChangeListener(Listener<User> listener) {
        this.changeListener = listener;
        listener.onValue(getUser());
    }

    private synchronized void onIdTokenChanged() {
        this.tokenCounter++;
        Listener<User> listener = this.changeListener;
        if (listener != null) {
            listener.onValue(getUser());
        }
    }

    private synchronized User getUser() {
        String uid;
        InternalAuthProvider internalAuthProvider = this.internalAuthProvider;
        uid = internalAuthProvider == null ? null : internalAuthProvider.getUid();
        return uid != null ? new User(uid) : User.UNAUTHENTICATED;
    }
}
