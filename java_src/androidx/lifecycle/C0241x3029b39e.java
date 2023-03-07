package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
/* compiled from: WithLifecycleState.kt */
/* renamed from: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 */
/* loaded from: classes.dex */
public final class C0241x3029b39e implements LifecycleEventObserver {
    final /* synthetic */ Function0 $block$inlined;
    final /* synthetic */ CancellableContinuation $co;
    final /* synthetic */ Lifecycle.State $state$inlined;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked$inlined;

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        Object m1870constructorimpl;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.upTo(this.$state$inlined)) {
            this.$this_suspendWithStateAtLeastUnchecked$inlined.removeObserver(this);
            CancellableContinuation cancellableContinuation = this.$co;
            Function0 function0 = this.$block$inlined;
            try {
                Result.Companion companion = Result.Companion;
                m1870constructorimpl = Result.m1870constructorimpl(function0.invoke());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m1870constructorimpl = Result.m1870constructorimpl(ResultKt.createFailure(th));
            }
            cancellableContinuation.resumeWith(m1870constructorimpl);
        } else if (event == Lifecycle.Event.ON_DESTROY) {
            this.$this_suspendWithStateAtLeastUnchecked$inlined.removeObserver(this);
            CancellableContinuation cancellableContinuation2 = this.$co;
            LifecycleDestroyedException lifecycleDestroyedException = new LifecycleDestroyedException();
            Result.Companion companion3 = Result.Companion;
            cancellableContinuation2.resumeWith(Result.m1870constructorimpl(ResultKt.createFailure(lifecycleDestroyedException)));
        }
    }
}
