package io.ktor.network.selector;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActorSelectorManager.kt */
@DebugMetadata(m148c = "io.ktor.network.selector.ActorSelectorManager", m147f = "ActorSelectorManager.kt", m146l = {202}, m145m = "select")
/* loaded from: classes4.dex */
public final class ActorSelectorManager$select$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ActorSelectorManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActorSelectorManager$select$1(ActorSelectorManager actorSelectorManager, Continuation<? super ActorSelectorManager$select$1> continuation) {
        super(continuation);
        this.this$0 = actorSelectorManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object select;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        select = this.this$0.select(null, this);
        return select;
    }
}
