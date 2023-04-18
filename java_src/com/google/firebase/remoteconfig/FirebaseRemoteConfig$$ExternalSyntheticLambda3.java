package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
/* loaded from: classes3.dex */
public final /* synthetic */ class FirebaseRemoteConfig$$ExternalSyntheticLambda3 implements SuccessContinuation {
    public static final /* synthetic */ FirebaseRemoteConfig$$ExternalSyntheticLambda3 INSTANCE = new FirebaseRemoteConfig$$ExternalSyntheticLambda3();

    private /* synthetic */ FirebaseRemoteConfig$$ExternalSyntheticLambda3() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Task forResult;
        ConfigContainer configContainer = (ConfigContainer) obj;
        forResult = Tasks.forResult(null);
        return forResult;
    }
}
