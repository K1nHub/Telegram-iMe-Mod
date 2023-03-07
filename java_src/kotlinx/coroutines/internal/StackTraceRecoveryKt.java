package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: StackTraceRecovery.kt */
/* loaded from: classes4.dex */
public final class StackTraceRecoveryKt {
    private static final String baseContinuationImplClassName;

    public static final /* synthetic */ Throwable access$recoverFromStackFrame(Throwable th, CoroutineStackFrame coroutineStackFrame) {
        return recoverFromStackFrame(th, coroutineStackFrame);
    }

    static {
        Object obj;
        Object m1870constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            obj = Result.m1870constructorimpl(Class.forName("kotlin.coroutines.jvm.internal.BaseContinuationImpl").getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.m1870constructorimpl(ResultKt.createFailure(th));
        }
        baseContinuationImplClassName = (String) (Result.m1871exceptionOrNullimpl(obj) == null ? obj : "kotlin.coroutines.jvm.internal.BaseContinuationImpl");
        try {
            Result.Companion companion3 = Result.Companion;
            m1870constructorimpl = Result.m1870constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            m1870constructorimpl = Result.m1870constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m1871exceptionOrNullimpl(m1870constructorimpl) != null) {
            m1870constructorimpl = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        String str = (String) m1870constructorimpl;
    }

    public static final <E extends Throwable> E recoverFromStackFrame(E e, CoroutineStackFrame coroutineStackFrame) {
        Pair causeAndStacktrace = causeAndStacktrace(e);
        Throwable th = (Throwable) causeAndStacktrace.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) causeAndStacktrace.component2();
        Throwable tryCopyException = ExceptionsConstuctorKt.tryCopyException(th);
        if (tryCopyException != null && Intrinsics.areEqual(tryCopyException.getMessage(), th.getMessage())) {
            ArrayDeque<StackTraceElement> createStackTrace = createStackTrace(coroutineStackFrame);
            if (createStackTrace.isEmpty()) {
                return e;
            }
            if (th != e) {
                mergeRecoveredTraces(stackTraceElementArr, createStackTrace);
            }
            return (E) createFinalException(th, tryCopyException, createStackTrace);
        }
        return e;
    }

    private static final <E extends Throwable> E createFinalException(E e, E e2, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(artificialFrame("Coroutine boundary"));
        StackTraceElement[] stackTrace = e.getStackTrace();
        int frameIndex = frameIndex(stackTrace, baseContinuationImplClassName);
        int i = 0;
        if (frameIndex == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            e2.setStackTrace((StackTraceElement[]) array);
            return e2;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + frameIndex];
        if (frameIndex > 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                stackTraceElementArr[i2] = stackTrace[i2];
                if (i3 >= frameIndex) {
                    break;
                }
                i2 = i3;
            }
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            int i4 = i + 1;
            stackTraceElementArr[i + frameIndex] = it.next();
            i = i4;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    private static final <E extends Throwable> Pair<E, StackTraceElement[]> causeAndStacktrace(E e) {
        boolean z;
        Throwable cause = e.getCause();
        if (cause != null && Intrinsics.areEqual(cause.getClass(), e.getClass())) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (isArtificial(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                return TuplesKt.m100to(cause, stackTrace);
            }
            return TuplesKt.m100to(e, new StackTraceElement[0]);
        }
        return TuplesKt.m100to(e, new StackTraceElement[0]);
    }

    public static final <E extends Throwable> E unwrapImpl(E e) {
        E e2 = (E) e.getCause();
        if (e2 != null && Intrinsics.areEqual(e2.getClass(), e.getClass())) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            int length = stackTrace.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (isArtificial(stackTrace[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                return e2;
            }
        }
        return e;
    }

    private static final ArrayDeque<StackTraceElement> createStackTrace(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    public static final StackTraceElement artificialFrame(String str) {
        return new StackTraceElement(Intrinsics.stringPlus("\b\b\b(", str), "\b", "\b", -1);
    }

    public static final boolean isArtificial(StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
        return startsWith$default;
    }

    private static final boolean elementWiseEquals(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int frameIndex(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }

    private static final void mergeRecoveredTraces(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (isArtificial(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i2 > length2) {
            return;
        }
        while (true) {
            int i3 = length2 - 1;
            if (elementWiseEquals(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i2) {
                return;
            }
            length2 = i3;
        }
    }
}
