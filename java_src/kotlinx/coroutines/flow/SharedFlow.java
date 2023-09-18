package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
/* compiled from: SharedFlow.kt */
/* loaded from: classes6.dex */
public interface SharedFlow<T> extends Flow<T> {
    @Override // kotlinx.coroutines.flow.Flow
    Object collect(FlowCollector<? super T> flowCollector, Continuation<?> continuation);
}
