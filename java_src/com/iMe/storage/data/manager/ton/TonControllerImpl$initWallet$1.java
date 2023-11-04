package com.iMe.storage.data.manager.ton;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TonControllerImpl.kt */
@DebugMetadata(m145c = "com.iMe.storage.data.manager.ton.TonControllerImpl", m144f = "TonControllerImpl.kt", m143l = {146, 145}, m142m = "initWallet")
/* loaded from: classes3.dex */
public final class TonControllerImpl$initWallet$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$initWallet$1(TonControllerImpl tonControllerImpl, Continuation<? super TonControllerImpl$initWallet$1> continuation) {
        super(continuation);
        this.this$0 = tonControllerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object initWallet;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        initWallet = this.this$0.initWallet(this);
        return initWallet;
    }
}
