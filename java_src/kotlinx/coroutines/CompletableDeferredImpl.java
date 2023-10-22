package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
/* compiled from: CompletableDeferred.kt */
/* loaded from: classes4.dex */
final class CompletableDeferredImpl<T> extends JobSupport implements CompletableDeferred<T> {
    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    public CompletableDeferredImpl(Job job) {
        super(true);
        initParentJob(job);
    }

    @Override // kotlinx.coroutines.Deferred
    public Object await(Continuation<? super T> continuation) {
        Object awaitInternal = awaitInternal(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return awaitInternal;
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public boolean complete(T t) {
        return makeCompleting$kotlinx_coroutines_core(t);
    }
}
