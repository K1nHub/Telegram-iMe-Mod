package org.ton.block;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
/* JADX INFO: Add missing generic type declarations: [X] */
/* compiled from: BinTreeFork.kt */
@DebugMetadata(m145c = "org.ton.block.BinTreeFork$nodes$1", m144f = "BinTreeFork.kt", m143l = {18, 19}, m142m = "invokeSuspend")
/* loaded from: classes6.dex */
final class BinTreeFork$nodes$1<X> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super X>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BinTreeFork<X> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinTreeFork$nodes$1(BinTreeFork<X> binTreeFork, Continuation<? super BinTreeFork$nodes$1> continuation) {
        super(2, continuation);
        this.this$0 = binTreeFork;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BinTreeFork$nodes$1 binTreeFork$nodes$1 = new BinTreeFork$nodes$1(this.this$0, continuation);
        binTreeFork$nodes$1.L$0 = obj;
        return binTreeFork$nodes$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((SequenceScope) ((SequenceScope) obj), continuation);
    }

    public final Object invoke(SequenceScope<? super X> sequenceScope, Continuation<? super Unit> continuation) {
        return ((BinTreeFork$nodes$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        SequenceScope sequenceScope;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            sequenceScope = (SequenceScope) this.L$0;
            Sequence<X> nodes = this.this$0.getLeft().getValue().nodes();
            this.L$0 = sequenceScope;
            this.label = 1;
            if (sequenceScope.yieldAll(nodes, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            sequenceScope = (SequenceScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Sequence<X> nodes2 = this.this$0.getRight().getValue().nodes();
        this.L$0 = null;
        this.label = 2;
        if (sequenceScope.yieldAll(nodes2, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
