package kotlin.sequences;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
/* compiled from: SequenceBuilder.kt */
/* loaded from: classes4.dex */
public abstract class SequenceScope<T> {
    public abstract Object yieldAll(Iterator<? extends T> it, Continuation<? super Unit> continuation);

    public final Object yieldAll(Sequence<? extends T> sequence, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object yieldAll = yieldAll(sequence.iterator(), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return yieldAll == coroutine_suspended ? yieldAll : Unit.INSTANCE;
    }
}
