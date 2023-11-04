package org.orbitmvi.orbit.syntax.simple;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleSyntaxExtensions.kt */
@DebugMetadata(m145c = "org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt", m144f = "SimpleSyntaxExtensions.kt", m143l = {42}, m142m = "reduce")
/* loaded from: classes4.dex */
public final class SimpleSyntaxExtensionsKt$reduce$1<S, SE> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleSyntaxExtensionsKt$reduce$1(Continuation<? super SimpleSyntaxExtensionsKt$reduce$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SimpleSyntaxExtensionsKt.reduce(null, null, this);
    }
}
