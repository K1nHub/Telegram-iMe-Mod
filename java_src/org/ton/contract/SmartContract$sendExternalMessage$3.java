package org.ton.contract;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.ton.contract.SmartContract;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SmartContract.kt */
@DebugMetadata(m148c = "org.ton.contract.SmartContract$DefaultImpls", m147f = "SmartContract.kt", m146l = {36}, m145m = "sendExternalMessage")
/* loaded from: classes6.dex */
public final class SmartContract$sendExternalMessage$3<T> extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmartContract$sendExternalMessage$3(Continuation<? super SmartContract$sendExternalMessage$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SmartContract.DefaultImpls.sendExternalMessage(null, null, null, this);
    }
}
