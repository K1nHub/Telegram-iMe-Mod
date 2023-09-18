package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
/* compiled from: Share.kt */
/* loaded from: classes6.dex */
final class ReadonlyStateFlow<T> implements StateFlow<T>, Flow {
    private final /* synthetic */ StateFlow<T> $$delegate_0;
    private final Job job;

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<?> continuation) {
        return this.$$delegate_0.collect(flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public T getValue() {
        return this.$$delegate_0.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReadonlyStateFlow(StateFlow<? extends T> stateFlow, Job job) {
        this.job = job;
        this.$$delegate_0 = stateFlow;
    }
}
