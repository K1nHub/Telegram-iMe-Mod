package moxy;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: PresenterScope.kt */
@Metadata(m157bv = {1, 0, 3}, m156d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001b\u0010\u0004\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, m155d2 = {"Lmoxy/MvpPresenter;", "Lkotlinx/coroutines/CoroutineScope;", "getPresenterScope", "(Lmoxy/MvpPresenter;)Lkotlinx/coroutines/CoroutineScope;", "presenterScope", "moxy-ktx"}, m154k = 2, m153mv = {1, 4, 0})
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
