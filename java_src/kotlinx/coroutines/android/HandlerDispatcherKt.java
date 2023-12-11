package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes4.dex */
public final class HandlerDispatcherKt {
    private static volatile Choreographer choreographer;

    public static final Handler asHandler(Looper looper, boolean z) {
        int i;
        if (!z || (i = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type android.os.Handler");
            return (Handler) invoke;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }

    static {
        Object m1942constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(new HandlerContext(asHandler(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(ResultKt.createFailure(th));
        }
        HandlerDispatcher handlerDispatcher = Result.m1947isFailureimpl(m1942constructorimpl) ? null : m1942constructorimpl;
    }
}
