package org.orbitmvi.orbit.idling;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleIdlingExtensions.kt */
@DebugMetadata(m102c = "org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt", m101f = "SimpleIdlingExtensions.kt", m100l = {30}, m99m = "withIdling")
/* loaded from: classes6.dex */
public final class SimpleIdlingExtensionsKt$withIdling$1<STATE, SIDE_EFFECT> extends ContinuationImpl {
    Object L$0;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleIdlingExtensionsKt$withIdling$1(Continuation<? super SimpleIdlingExtensionsKt$withIdling$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SimpleIdlingExtensionsKt.withIdling(null, false, null, this);
    }
}
