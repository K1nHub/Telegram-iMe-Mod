package org.ton.lite.client;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteClient.kt */
@DebugMetadata(m143c = "org.ton.lite.client.LiteClient", m142f = "LiteClient.kt", m141l = {343}, m140m = "getAccountState")
/* loaded from: classes6.dex */
public final class LiteClient$getAccountState$2 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LiteClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteClient$getAccountState$2(LiteClient liteClient, Continuation<? super LiteClient$getAccountState$2> continuation) {
        super(continuation);
        this.this$0 = liteClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getAccountState(null, null, this);
    }
}
