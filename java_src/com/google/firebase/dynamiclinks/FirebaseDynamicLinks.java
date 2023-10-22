package com.google.firebase.dynamiclinks;

import android.net.Uri;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
/* loaded from: classes3.dex */
public abstract class FirebaseDynamicLinks {
    public abstract Task<PendingDynamicLinkData> getDynamicLink(Uri uri);

    public static synchronized FirebaseDynamicLinks getInstance(FirebaseApp firebaseApp) {
        FirebaseDynamicLinks firebaseDynamicLinks;
        synchronized (FirebaseDynamicLinks.class) {
            firebaseDynamicLinks = (FirebaseDynamicLinks) firebaseApp.get(FirebaseDynamicLinks.class);
        }
        return firebaseDynamicLinks;
    }
}
