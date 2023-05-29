package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1574constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1574constructorimpl = Result.m1574constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1574constructorimpl = Result.m1574constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1577isSuccessimpl(m1574constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
