package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object m1601constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m1601constructorimpl = Result.m1601constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1601constructorimpl = Result.m1601constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m1604isSuccessimpl(m1601constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
