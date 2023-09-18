package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
/* compiled from: Share.kt */
/* loaded from: classes6.dex */
final class ReadonlySharedFlow<T> implements SharedFlow<T>, Flow {
    private final /* synthetic */ SharedFlow<T> $$delegate_0;
    private final Job job;

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<?> continuation) {
        return this.$$delegate_0.collect(flowCollector, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReadonlySharedFlow(SharedFlow<? extends T> sharedFlow, Job job) {
        this.job = job;
        this.$$delegate_0 = sharedFlow;
    }
}
