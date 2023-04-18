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
        String m1555constructorimpl;
        if (continuation instanceof DispatchedContinuation) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m1555constructorimpl = Result.m1555constructorimpl(continuation + '@' + getHexAddress(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1555constructorimpl = Result.m1555constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1556exceptionOrNullimpl(m1555constructorimpl) != null) {
            m1555constructorimpl = continuation.getClass().getName() + '@' + getHexAddress(continuation);
        }
        return (String) m1555constructorimpl;
    }

    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }
}
