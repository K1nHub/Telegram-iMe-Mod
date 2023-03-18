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
        String m1463constructorimpl;
        if (continuation instanceof DispatchedContinuation) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m1463constructorimpl = Result.m1463constructorimpl(continuation + '@' + getHexAddress(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1464exceptionOrNullimpl(m1463constructorimpl) != null) {
            m1463constructorimpl = ((Object) continuation.getClass().getName()) + '@' + getHexAddress(continuation);
        }
        return (String) m1463constructorimpl;
    }

    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }
}
