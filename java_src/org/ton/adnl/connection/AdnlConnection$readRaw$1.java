package org.ton.adnl.connection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m143c = "org.ton.adnl.connection.AdnlConnection", m142f = "AdnlConnection.kt", m141l = {153, 156}, m140m = "readRaw")
/* loaded from: classes6.dex */
public final class AdnlConnection$readRaw$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$readRaw$1(AdnlConnection adnlConnection, Continuation<? super AdnlConnection$readRaw$1> continuation) {
        super(continuation);
        this.this$0 = adnlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readRaw;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readRaw = this.this$0.readRaw(null, null, this);
        return readRaw;
    }
}
