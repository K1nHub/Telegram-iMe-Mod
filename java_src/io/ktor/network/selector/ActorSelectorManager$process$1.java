package io.ktor.network.selector;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActorSelectorManager.kt */
@DebugMetadata(m145c = "io.ktor.network.selector.ActorSelectorManager", m144f = "ActorSelectorManager.kt", m143l = {69, 73, 89}, m142m = "process")
/* loaded from: classes4.dex */
public final class ActorSelectorManager$process$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ActorSelectorManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActorSelectorManager$process$1(ActorSelectorManager actorSelectorManager, Continuation<? super ActorSelectorManager$process$1> continuation) {
        super(continuation);
        this.this$0 = actorSelectorManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.process(null, null, this);
    }
}
