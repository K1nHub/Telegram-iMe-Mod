package moxy;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: PresenterScope.kt */
/* loaded from: classes4.dex */
public final class PresenterScopeKt {
    public static final CoroutineScope getPresenterScope(MvpPresenter<?> presenterScope) {
        CompletableJob Job$default;
        Intrinsics.checkParameterIsNotNull(presenterScope, "$this$presenterScope");
        OnDestroyListener onDestroyListener = presenterScope.coroutineScope;
        CoroutineScope coroutineScope = (CoroutineScope) (!(onDestroyListener instanceof CoroutineScope) ? null : onDestroyListener);
        if (coroutineScope != null) {
            return coroutineScope;
        }
        if (Intrinsics.areEqual(onDestroyListener, OnDestroyListener.EMPTY)) {
            Job$default = JobKt__JobKt.Job$default(null, 1, null);
            Job.DefaultImpls.cancel$default(Job$default, null, 1, null);
            return CoroutineScopeKt.CoroutineScope(Job$default);
        }
        PresenterCoroutineScope presenterCoroutineScope = new PresenterCoroutineScope();
        presenterScope.coroutineScope = presenterCoroutineScope;
        return presenterCoroutineScope;
    }
}
