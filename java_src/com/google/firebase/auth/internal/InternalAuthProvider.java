package com.google.firebase.auth.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.GetTokenResult;
/* compiled from: com.google.firebase:firebase-auth-interop@@20.0.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public interface InternalAuthProvider {
    @KeepForSdk
    void addIdTokenListener(IdTokenListener idTokenListener);

    @KeepForSdk
    Task<GetTokenResult> getAccessToken(boolean z);

    String getUid();
}
