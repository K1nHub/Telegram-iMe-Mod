package kotlinx.coroutines.rx2;

import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
/* compiled from: RxSingle.kt */
/* loaded from: classes4.dex */
public final class RxSingleKt {
    public static /* synthetic */ Single rxSingle$default(CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return rxSingle(coroutineContext, function2);
    }

    public static final <T> Single<T> rxSingle(CoroutineContext coroutineContext, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        if (!(coroutineContext.get(Job.Key) == null)) {
            throw new IllegalArgumentException(("Single context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had " + coroutineContext).toString());
        }
        return rxSingleInternal(GlobalScope.INSTANCE, coroutineContext, function2);
    }

    private static final <T> Single<T> rxSingleInternal(final CoroutineScope coroutineScope, final CoroutineContext coroutineContext, final Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        return Single.create(new SingleOnSubscribe() { // from class: kotlinx.coroutines.rx2.RxSingleKt$$ExternalSyntheticLambda0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                RxSingleKt.rxSingleInternal$lambda$1(CoroutineScope.this, coroutineContext, function2, singleEmitter);
            }
        });
    }

    public static final void rxSingleInternal$lambda$1(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Function2 function2, SingleEmitter singleEmitter) {
        RxSingleCoroutine rxSingleCoroutine = new RxSingleCoroutine(CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext), singleEmitter);
        singleEmitter.setCancellable(new RxCancellable(rxSingleCoroutine));
        rxSingleCoroutine.start(CoroutineStart.DEFAULT, rxSingleCoroutine, function2);
    }
}
