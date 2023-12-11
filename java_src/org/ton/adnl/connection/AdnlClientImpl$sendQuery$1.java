package org.ton.adnl.connection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlClientImpl.kt */
@DebugMetadata(m145c = "org.ton.adnl.connection.AdnlClientImpl", m144f = "AdnlClientImpl.kt", m143l = {22}, m142m = "sendQuery-8Mi8wO0")
/* loaded from: classes6.dex */
public final class AdnlClientImpl$sendQuery$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdnlClientImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlClientImpl$sendQuery$1(AdnlClientImpl adnlClientImpl, Continuation<? super AdnlClientImpl$sendQuery$1> continuation) {
        super(continuation);
        this.this$0 = adnlClientImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m5052sendQuery8Mi8wO0(null, 0L, this);
    }
}
