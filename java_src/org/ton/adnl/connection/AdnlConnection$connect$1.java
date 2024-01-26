package org.ton.adnl.connection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m148c = "org.ton.adnl.connection.AdnlConnection", m147f = "AdnlConnection.kt", m146l = {91}, m145m = "connect")
/* loaded from: classes6.dex */
public final class AdnlConnection$connect$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$connect$1(AdnlConnection adnlConnection, Continuation<? super AdnlConnection$connect$1> continuation) {
        super(continuation);
        this.this$0 = adnlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object connect;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        connect = this.this$0.connect(this);
        return connect;
    }
}
