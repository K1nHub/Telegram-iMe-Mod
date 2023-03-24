package kotlinx.coroutines.scheduling;

import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
/* compiled from: Dispatcher.kt */
/* loaded from: classes4.dex */
public final class DefaultScheduler extends ExperimentalCoroutineDispatcher {
    public static final DefaultScheduler INSTANCE;

    /* renamed from: IO */
    private static final CoroutineDispatcher f1222IO;

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "Dispatchers.Default";
    }

    private DefaultScheduler() {
        super(0, 0, null, 7, null);
    }

    static {
        int coerceAtLeast;
        int systemProp$default;
        DefaultScheduler defaultScheduler = new DefaultScheduler();
        INSTANCE = defaultScheduler;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(64, SystemPropsKt.getAVAILABLE_PROCESSORS());
        systemProp$default = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.io.parallelism", coerceAtLeast, 0, 0, 12, (Object) null);
        f1222IO = new LimitingDispatcher(defaultScheduler, systemProp$default, "Dispatchers.IO", 1);
    }

    public final CoroutineDispatcher getIO() {
        return f1222IO;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }
}
