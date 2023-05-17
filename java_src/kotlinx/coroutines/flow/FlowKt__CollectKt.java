package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collect.kt */
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__CollectKt {
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, Flow<? extends T> flow, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        FlowKt.ensureActive(flowCollector);
        Object collect = flow.collect(flowCollector, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }
}
