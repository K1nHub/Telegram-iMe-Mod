package com.google.firebase.firestore;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* loaded from: classes3.dex */
public final /* synthetic */ class FirestoreRegistrar$$ExternalSyntheticLambda0 implements ComponentFactory {
    public static final /* synthetic */ FirestoreRegistrar$$ExternalSyntheticLambda0 INSTANCE = new FirestoreRegistrar$$ExternalSyntheticLambda0();

    private /* synthetic */ FirestoreRegistrar$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        FirestoreMultiDbComponent lambda$getComponents$0;
        lambda$getComponents$0 = FirestoreRegistrar.lambda$getComponents$0(componentContainer);
        return lambda$getComponents$0;
    }
}
