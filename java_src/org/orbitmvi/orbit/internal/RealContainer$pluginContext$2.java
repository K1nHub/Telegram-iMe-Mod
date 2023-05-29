package org.orbitmvi.orbit.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.MutableStateFlow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealContainer.kt */
/* loaded from: classes4.dex */
public final class RealContainer$pluginContext$2 extends Lambda implements Function0<STATE> {
    final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealContainer$pluginContext$2(RealContainer<STATE, SIDE_EFFECT> realContainer) {
        super(0);
        this.this$0 = realContainer;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [STATE, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final STATE invoke() {
        MutableStateFlow mutableStateFlow;
        mutableStateFlow = ((RealContainer) this.this$0).internalStateFlow;
        return mutableStateFlow.getValue();
    }
}
