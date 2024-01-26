package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
/* compiled from: SafeCollector.kt */
/* loaded from: classes4.dex */
public final class DownstreamExceptionContext implements CoroutineContext {
    private final /* synthetic */ CoroutineContext $$delegate_0;

    /* renamed from: e */
    public final Throwable f1398e;

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) this.$$delegate_0.fold(r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) this.$$delegate_0.get(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return this.$$delegate_0.minusKey(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return this.$$delegate_0.plus(coroutineContext);
    }

    public DownstreamExceptionContext(Throwable th, CoroutineContext coroutineContext) {
        this.f1398e = th;
        this.$$delegate_0 = coroutineContext;
    }
}
