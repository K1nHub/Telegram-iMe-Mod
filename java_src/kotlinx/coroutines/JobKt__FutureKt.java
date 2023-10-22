package kotlinx.coroutines;

import java.util.concurrent.Future;
/* compiled from: Future.kt */
/* loaded from: classes4.dex */
final /* synthetic */ class JobKt__FutureKt {
    public static final void cancelFutureOnCancellation(CancellableContinuation<?> cancellableContinuation, Future<?> future) {
        cancellableContinuation.invokeOnCancellation(new CancelFutureOnCancel(future));
    }
}
