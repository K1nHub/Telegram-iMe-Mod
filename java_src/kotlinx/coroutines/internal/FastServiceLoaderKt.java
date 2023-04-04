package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1571constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1571constructorimpl = Result.m1571constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1571constructorimpl = Result.m1571constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1574isSuccessimpl(m1571constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
