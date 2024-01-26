package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
/* compiled from: Select.kt */
/* loaded from: classes4.dex */
public final class SelectKt {
    private static final Symbol NO_RESULT;
    private static final Symbol STATE_CANCELLED;
    private static final Symbol STATE_COMPLETED;
    private static final Symbol STATE_REG;

    static {
        SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1 selectKt$DUMMY_PROCESS_RESULT_FUNCTION$1 = new Function3() { // from class: kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1
            @Override // kotlin.jvm.functions.Function3
            public final Void invoke(Object obj, Object obj2, Object obj3) {
                return null;
            }
        };
        STATE_REG = new Symbol("STATE_REG");
        STATE_COMPLETED = new Symbol("STATE_COMPLETED");
        STATE_CANCELLED = new Symbol("STATE_CANCELLED");
        NO_RESULT = new Symbol("NO_RESULT");
        new Symbol("PARAM_CLAUSE_0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean tryResume(CancellableContinuation<? super Unit> cancellableContinuation, Function1<? super Throwable, Unit> function1) {
        Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, function1);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrySelectDetailedResult TrySelectDetailedResult(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return TrySelectDetailedResult.ALREADY_SELECTED;
                    }
                    throw new IllegalStateException(("Unexpected internal result: " + i).toString());
                }
                return TrySelectDetailedResult.CANCELLED;
            }
            return TrySelectDetailedResult.REREGISTER;
        }
        return TrySelectDetailedResult.SUCCESSFUL;
    }
}
