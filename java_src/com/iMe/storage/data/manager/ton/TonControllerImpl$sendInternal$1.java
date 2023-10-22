package com.iMe.storage.data.manager.ton;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TonControllerImpl.kt */
@DebugMetadata(m143c = "com.iMe.storage.data.manager.ton.TonControllerImpl", m142f = "TonControllerImpl.kt", m141l = {159, 162, 161}, m140m = "sendInternal")
/* loaded from: classes3.dex */
public final class TonControllerImpl$sendInternal$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$sendInternal$1(TonControllerImpl tonControllerImpl, Continuation<? super TonControllerImpl$sendInternal$1> continuation) {
        super(continuation);
        this.this$0 = tonControllerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object sendInternal;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        sendInternal = this.this$0.sendInternal(null, 0L, null, this);
        return sendInternal;
    }
}
