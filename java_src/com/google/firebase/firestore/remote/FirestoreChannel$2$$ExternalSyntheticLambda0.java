package com.google.firebase.firestore.remote;

import com.google.android.gms.tasks.OnSuccessListener;
import io.grpc.ClientCall;
/* loaded from: classes3.dex */
public final /* synthetic */ class FirestoreChannel$2$$ExternalSyntheticLambda0 implements OnSuccessListener {
    public static final /* synthetic */ FirestoreChannel$2$$ExternalSyntheticLambda0 INSTANCE = new FirestoreChannel$2$$ExternalSyntheticLambda0();

    private /* synthetic */ FirestoreChannel$2$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        ((ClientCall) obj).halfClose();
    }
}
