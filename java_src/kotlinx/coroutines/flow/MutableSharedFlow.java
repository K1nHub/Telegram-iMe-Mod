package kotlinx.coroutines.flow;
/* compiled from: SharedFlow.kt */
/* loaded from: classes6.dex */
public interface MutableSharedFlow<T> extends SharedFlow<T>, FlowCollector<T> {
    boolean tryEmit(T t);
}
