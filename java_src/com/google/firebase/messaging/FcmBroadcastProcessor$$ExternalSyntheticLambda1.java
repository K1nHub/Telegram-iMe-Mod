package com.google.firebase.messaging;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class FcmBroadcastProcessor$$ExternalSyntheticLambda1 implements Continuation {
    public static final /* synthetic */ FcmBroadcastProcessor$$ExternalSyntheticLambda1 INSTANCE = new FcmBroadcastProcessor$$ExternalSyntheticLambda1();

    private /* synthetic */ FcmBroadcastProcessor$$ExternalSyntheticLambda1() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        return FcmBroadcastProcessor.lambda$bindToMessagingService$3(task);
    }
}
