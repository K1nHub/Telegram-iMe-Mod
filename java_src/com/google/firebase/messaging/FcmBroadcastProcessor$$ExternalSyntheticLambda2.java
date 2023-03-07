package com.google.firebase.messaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class FcmBroadcastProcessor$$ExternalSyntheticLambda2 implements Continuation {
    public static final /* synthetic */ FcmBroadcastProcessor$$ExternalSyntheticLambda2 INSTANCE = new FcmBroadcastProcessor$$ExternalSyntheticLambda2();

    private /* synthetic */ FcmBroadcastProcessor$$ExternalSyntheticLambda2() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return FcmBroadcastProcessor.lambda$startMessagingService$1(task);
    }
}
