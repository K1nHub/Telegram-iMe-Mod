package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1935constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1935constructorimpl = Result.m1935constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1935constructorimpl = Result.m1935constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1941isSuccessimpl(m1935constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
