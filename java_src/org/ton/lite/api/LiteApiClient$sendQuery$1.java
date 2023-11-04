package org.ton.lite.api;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.ton.lite.api.LiteApiClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteApiClient.kt */
@DebugMetadata(m145c = "org.ton.lite.api.LiteApiClient$DefaultImpls", m144f = "LiteApiClient.kt", m143l = {26}, m142m = "sendQuery")
/* loaded from: classes6.dex */
public final class LiteApiClient$sendQuery$1<Q, A> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiteApiClient$sendQuery$1(Continuation<? super LiteApiClient$sendQuery$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return LiteApiClient.DefaultImpls.sendQuery(null, null, null, null, 0, this);
    }
}
