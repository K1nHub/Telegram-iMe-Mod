package org.ton.adnl.connection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnectionFactory.kt */
@DebugMetadata(m143c = "org.ton.adnl.connection.AdnlConnectionFactory", m142f = "AdnlConnectionFactory.kt", m141l = {15}, m140m = "connect")
/* loaded from: classes6.dex */
public final class AdnlConnectionFactory$connect$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdnlConnectionFactory this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnectionFactory$connect$1(AdnlConnectionFactory adnlConnectionFactory, Continuation<? super AdnlConnectionFactory$connect$1> continuation) {
        super(continuation);
        this.this$0 = adnlConnectionFactory;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.connect(null, this);
    }
}
