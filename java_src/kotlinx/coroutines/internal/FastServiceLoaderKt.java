package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1943constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1949isSuccessimpl(m1943constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
