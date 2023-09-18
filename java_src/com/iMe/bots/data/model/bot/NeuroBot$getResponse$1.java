package com.iMe.bots.data.model.bot;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NeuroBot.kt */
@DebugMetadata(m102c = "com.iMe.bots.data.model.bot.NeuroBot", m101f = "NeuroBot.kt", m100l = {83, 153}, m99m = "getResponse")
/* loaded from: classes4.dex */
public final class NeuroBot$getResponse$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NeuroBot this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeuroBot$getResponse$1(NeuroBot neuroBot, Continuation<? super NeuroBot$getResponse$1> continuation) {
        super(continuation);
        this.this$0 = neuroBot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getResponse(null, this);
    }
}
