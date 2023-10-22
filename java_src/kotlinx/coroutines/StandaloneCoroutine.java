package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
/* loaded from: classes4.dex */
public class StandaloneCoroutine extends AbstractCoroutine<Unit> {
    public StandaloneCoroutine(CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, true, z);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean handleJobException(Throwable th) {
        CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        return true;
    }
}
