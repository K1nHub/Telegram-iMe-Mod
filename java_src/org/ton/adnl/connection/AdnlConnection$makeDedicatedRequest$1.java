package org.ton.adnl.connection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m145c = "org.ton.adnl.connection.AdnlConnection", m144f = "AdnlConnection.kt", m143l = {57, 218, 76, 78, 79}, m142m = "makeDedicatedRequest")
/* loaded from: classes6.dex */
public final class AdnlConnection$makeDedicatedRequest$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$makeDedicatedRequest$1(AdnlConnection adnlConnection, Continuation<? super AdnlConnection$makeDedicatedRequest$1> continuation) {
        super(continuation);
        this.this$0 = adnlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object makeDedicatedRequest;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        makeDedicatedRequest = this.this$0.makeDedicatedRequest(null, null, this);
        return makeDedicatedRequest;
    }
}
