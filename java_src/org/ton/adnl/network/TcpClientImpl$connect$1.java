package org.ton.adnl.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TcpClientImpl.kt */
@DebugMetadata(m145c = "org.ton.adnl.network.TcpClientImpl", m144f = "TcpClientImpl.kt", m143l = {21}, m142m = "connect")
/* loaded from: classes6.dex */
public final class TcpClientImpl$connect$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TcpClientImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TcpClientImpl$connect$1(TcpClientImpl tcpClientImpl, Continuation<? super TcpClientImpl$connect$1> continuation) {
        super(continuation);
        this.this$0 = tcpClientImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.connect(null, 0, this);
    }
}
