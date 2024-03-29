package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.DispatchedContinuation;
/* compiled from: DebugStrings.kt */
/* loaded from: classes4.dex */
public final class DebugStringsKt {
    public static final String getHexAddress(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String toDebugString(Continuation<?> continuation) {
        String m1943constructorimpl;
        if (continuation instanceof DispatchedContinuation) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(continuation + '@' + getHexAddress(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1946exceptionOrNullimpl(m1943constructorimpl) != null) {
            m1943constructorimpl = continuation.getClass().getName() + '@' + getHexAddress(continuation);
        }
        return (String) m1943constructorimpl;
    }

    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }
}
