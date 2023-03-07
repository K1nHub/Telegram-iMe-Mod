package moxy;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: PresenterScope.kt */
/* loaded from: classes4.dex */
public final class PresenterCoroutineScope implements CoroutineScope, OnDestroyListener {
    private final /* synthetic */ CoroutineScope $$delegate_0 = CoroutineScopeKt.MainScope();

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // moxy.OnDestroyListener
    public void onDestroy() {
        JobKt__JobKt.cancel$default(getCoroutineContext(), null, 1, null);
    }
}
