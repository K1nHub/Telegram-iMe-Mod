package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
/* compiled from: Emitters.kt */
/* loaded from: classes6.dex */
public final class ThrowingCollector implements FlowCollector<Object> {

    /* renamed from: e */
    public final Throwable f1309e;

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(Object obj, Continuation<? super Unit> continuation) {
        throw this.f1309e;
    }
}
