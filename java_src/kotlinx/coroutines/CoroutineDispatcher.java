package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
/* compiled from: CoroutineDispatcher.kt */
/* loaded from: classes4.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final Key Key = new Key(null);

    /* renamed from: dispatch */
    public abstract void mo1604dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return true;
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.Key);
    }

    /* compiled from: CoroutineDispatcher.kt */
    /* loaded from: classes4.dex */
    public static final class Key extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: CoroutineDispatcher.kt */
        /* renamed from: kotlinx.coroutines.CoroutineDispatcher$Key$1 */
        /* loaded from: classes4.dex */
        static final class C31371 extends Lambda implements Function1<CoroutineContext.Element, CoroutineDispatcher> {
            public static final C31371 INSTANCE = new C31371();

            C31371() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CoroutineDispatcher invoke(CoroutineContext.Element element) {
                if (element instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) element;
                }
                return null;
            }
        }

        private Key() {
            super(ContinuationInterceptor.Key, C31371.INSTANCE);
        }
    }

    public CoroutineDispatcher limitedParallelism(int i) {
        LimitedDispatcherKt.checkParallelism(i);
        return new LimitedDispatcher(this, i);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final <T> Continuation<T> interceptContinuation(Continuation<? super T> continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation<?> continuation) {
        ((DispatchedContinuation) continuation).release();
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
