package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
/* compiled from: WithLifecycleState.kt */
/* renamed from: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 */
/* loaded from: classes.dex */
public final class C0226xfdb59cc4 implements LifecycleEventObserver {
    final /* synthetic */ Function0<Object> $block;
    final /* synthetic */ CancellableContinuation<Object> $co;
    final /* synthetic */ Lifecycle.State $state;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked;

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        Object m1601constructorimpl;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.Companion.upTo(this.$state)) {
            this.$this_suspendWithStateAtLeastUnchecked.removeObserver(this);
            CancellableContinuation<Object> cancellableContinuation = this.$co;
            Function0<Object> function0 = this.$block;
            try {
                Result.Companion companion = Result.Companion;
                m1601constructorimpl = Result.m1601constructorimpl(function0.invoke());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m1601constructorimpl = Result.m1601constructorimpl(ResultKt.createFailure(th));
            }
            cancellableContinuation.resumeWith(m1601constructorimpl);
        } else if (event == Lifecycle.Event.ON_DESTROY) {
            this.$this_suspendWithStateAtLeastUnchecked.removeObserver(this);
            CancellableContinuation<Object> cancellableContinuation2 = this.$co;
            Result.Companion companion3 = Result.Companion;
            cancellableContinuation2.resumeWith(Result.m1601constructorimpl(ResultKt.createFailure(new LifecycleDestroyedException())));
        }
    }
}
