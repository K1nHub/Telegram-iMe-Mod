package com.google.firebase.firestore.auth;

import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.util.Listener;
/* loaded from: classes3.dex */
public abstract class CredentialsProvider {
    public abstract Task<String> getToken();

    public abstract void invalidateToken();

    public abstract void setChangeListener(Listener<User> listener);
}
