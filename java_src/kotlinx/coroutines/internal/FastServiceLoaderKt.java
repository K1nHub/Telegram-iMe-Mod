package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1942constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1948isSuccessimpl(m1942constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
