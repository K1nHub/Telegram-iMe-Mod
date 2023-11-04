package org.ton.lite.client;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteClient.kt */
@DebugMetadata(m145c = "org.ton.lite.client.LiteClient", m144f = "LiteClient.kt", m143l = {148, 157}, m142m = "getLastBlockId")
/* loaded from: classes6.dex */
public final class LiteClient$getLastBlockId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LiteClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteClient$getLastBlockId$1(LiteClient liteClient, Continuation<? super LiteClient$getLastBlockId$1> continuation) {
        super(continuation);
        this.this$0 = liteClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getLastBlockId(0, this);
    }
}
