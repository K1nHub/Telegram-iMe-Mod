package com.google.firebase.firestore.local;

import com.google.firebase.firestore.auth.User;
import com.google.firebase.firestore.util.Supplier;
/* loaded from: classes3.dex */
public abstract class Persistence {
    public static boolean INDEXING_SUPPORT_ENABLED = false;
    static final String TAG = "Persistence";

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract BundleCache getBundleCache();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract IndexManager getIndexManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract MutationQueue getMutationQueue(User user);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ReferenceDelegate getReferenceDelegate();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract RemoteDocumentCache getRemoteDocumentCache();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract TargetCache getTargetCache();

    public abstract boolean isStarted();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <T> T runTransaction(String str, Supplier<T> supplier);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void runTransaction(String str, Runnable runnable);

    public abstract void start();
}
