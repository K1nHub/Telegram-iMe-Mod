package org.ton.bitstring;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
/* compiled from: EmptyBitString.kt */
@DebugMetadata(m148c = "org.ton.bitstring.EmptyBitString$iterator$1", m147f = "EmptyBitString.kt", m146l = {}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
final class EmptyBitString$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Boolean>, Continuation<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmptyBitString$iterator$1(Continuation<? super EmptyBitString$iterator$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EmptyBitString$iterator$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Boolean> sequenceScope, Continuation<? super Unit> continuation) {
        return ((EmptyBitString$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
