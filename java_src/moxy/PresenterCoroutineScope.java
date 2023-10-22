package moxy;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.JobKt__JobKt;
/* compiled from: PresenterScope.kt */
@Metadata(m152bv = {1, 0, 3}, m151d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u0016\u0010\b\u001a\u00020\u00058\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m150d2 = {"Lmoxy/PresenterCoroutineScope;", "Lkotlinx/coroutines/CoroutineScope;", "Lmoxy/OnDestroyListener;", "", "onDestroy", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "<init>", "()V", "moxy-ktx"}, m149k = 1, m148mv = {1, 4, 0})
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
