package kotlinx.coroutines.flow;
/* compiled from: SharedFlow.kt */
/* loaded from: classes4.dex */
public interface MutableSharedFlow<T> extends SharedFlow<T>, FlowCollector<T> {
    boolean tryEmit(T t);
}
