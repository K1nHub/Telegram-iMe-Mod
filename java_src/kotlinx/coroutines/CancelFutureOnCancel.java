package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Unit;
/* compiled from: Future.kt */
/* loaded from: classes4.dex */
final class CancelFutureOnCancel extends CancelHandler {
    private final Future<?> future;

    public CancelFutureOnCancel(Future<?> future) {
        this.future = future;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        if (th != null) {
            this.future.cancel(false);
        }
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.future + ']';
    }
}
