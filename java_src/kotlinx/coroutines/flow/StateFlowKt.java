package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
/* compiled from: StateFlow.kt */
/* loaded from: classes4.dex */
public final class StateFlowKt {
    private static final Symbol NONE = new Symbol("NONE");
    private static final Symbol PENDING = new Symbol("PENDING");

    public static final /* synthetic */ Symbol access$getNONE$p() {
        return NONE;
    }

    public static final /* synthetic */ Symbol access$getPENDING$p() {
        return PENDING;
    }

    public static final <T> MutableStateFlow<T> MutableStateFlow(T t) {
        if (t == null) {
            t = (T) NullSurrogateKt.NULL;
        }
        return new StateFlowImpl(t);
    }
}
