package kotlinx.coroutines.rx2;

import io.reactivex.SingleEmitter;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AbstractCoroutine;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RxSingle.kt */
/* loaded from: classes4.dex */
public final class RxSingleCoroutine<T> extends AbstractCoroutine<T> {
    private final SingleEmitter<T> subscriber;

    public RxSingleCoroutine(CoroutineContext coroutineContext, SingleEmitter<T> singleEmitter) {
        super(coroutineContext, false, true);
        this.subscriber = singleEmitter;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    protected void onCompleted(T t) {
        try {
            this.subscriber.onSuccess(t);
        } catch (Throwable th) {
            RxCancellableKt.handleUndeliverableException(th, getContext());
        }
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    protected void onCancelled(Throwable th, boolean z) {
        try {
            if (this.subscriber.tryOnError(th)) {
                return;
            }
        } catch (Throwable th2) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        RxCancellableKt.handleUndeliverableException(th, getContext());
    }
}
