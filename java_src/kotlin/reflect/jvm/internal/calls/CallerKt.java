package kotlin.reflect.jvm.internal.calls;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Caller.kt */
/* loaded from: classes4.dex */
public final class CallerKt {
    public static final int getArity(Caller<?> caller) {
        Intrinsics.checkNotNullParameter(caller, "<this>");
        return caller.getParameterTypes().size();
    }
}
