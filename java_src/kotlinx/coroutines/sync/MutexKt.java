package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.Symbol;
/* compiled from: Mutex.kt */
/* loaded from: classes4.dex */
public final class MutexKt {
    private static final Symbol NO_OWNER = new Symbol("NO_OWNER");

    public static /* synthetic */ Mutex Mutex$default(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Mutex(z);
    }

    public static final Mutex Mutex(boolean z) {
        return new MutexImpl(z);
    }

    static {
        new Symbol("ALREADY_LOCKED_BY_OWNER");
    }
}
