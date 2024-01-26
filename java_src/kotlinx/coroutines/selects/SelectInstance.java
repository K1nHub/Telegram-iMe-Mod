package kotlinx.coroutines.selects;

import kotlin.coroutines.CoroutineContext;
/* compiled from: Select.kt */
/* loaded from: classes4.dex */
public interface SelectInstance<R> {
    CoroutineContext getContext();

    void selectInRegistrationPhase(Object obj);

    boolean trySelect(Object obj, Object obj2);
}
