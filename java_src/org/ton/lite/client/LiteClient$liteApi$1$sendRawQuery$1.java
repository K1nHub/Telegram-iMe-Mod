package org.ton.lite.client;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteClient.kt */
@DebugMetadata(m143c = "org.ton.lite.client.LiteClient$liteApi$1", m142f = "LiteClient.kt", m141l = {91, 98}, m140m = "sendRawQuery")
/* loaded from: classes6.dex */
public final class LiteClient$liteApi$1$sendRawQuery$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LiteClient$liteApi$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteClient$liteApi$1$sendRawQuery$1(LiteClient$liteApi$1 liteClient$liteApi$1, Continuation<? super LiteClient$liteApi$1$sendRawQuery$1> continuation) {
        super(continuation);
        this.this$0 = liteClient$liteApi$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.sendRawQuery(null, this);
    }
}
