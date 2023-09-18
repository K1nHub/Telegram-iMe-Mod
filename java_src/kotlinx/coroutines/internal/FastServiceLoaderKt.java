package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes6.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1658constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1658constructorimpl = Result.m1658constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1658constructorimpl = Result.m1658constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1661isSuccessimpl(m1658constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
