package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
/* compiled from: Emitters.kt */
/* loaded from: classes4.dex */
public final class ThrowingCollector implements FlowCollector<Object> {

    /* renamed from: e */
    public final Throwable f1223e;

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(Object obj, Continuation<? super Unit> continuation) {
        throw this.f1223e;
    }
}
