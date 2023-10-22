package kotlin.time;
/* compiled from: DurationJvm.kt */
/* loaded from: classes4.dex */
public final class DurationJvmKt {
    private static final boolean durationAssertionsEnabled = false;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal();
        }
    }

    public static final boolean getDurationAssertionsEnabled() {
        return durationAssertionsEnabled;
    }
}
