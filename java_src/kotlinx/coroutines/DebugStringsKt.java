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
        String m1870constructorimpl;
        if (continuation instanceof DispatchedContinuation) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m1870constructorimpl = Result.m1870constructorimpl(continuation + '@' + getHexAddress(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1870constructorimpl = Result.m1870constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1871exceptionOrNullimpl(m1870constructorimpl) != null) {
            m1870constructorimpl = ((Object) continuation.getClass().getName()) + '@' + getHexAddress(continuation);
        }
        return (String) m1870constructorimpl;
    }

    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }
}
