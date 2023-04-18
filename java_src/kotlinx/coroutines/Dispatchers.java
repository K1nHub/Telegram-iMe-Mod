package kotlinx.coroutines;

import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
/* compiled from: Dispatchers.kt */
/* loaded from: classes4.dex */
public final class Dispatchers {
    private static final CoroutineDispatcher Default;

    /* renamed from: IO */
    private static final CoroutineDispatcher f1219IO;

    private Dispatchers() {
    }

    static {
        new Dispatchers();
        Default = DefaultScheduler.INSTANCE;
        Unconfined unconfined = Unconfined.INSTANCE;
        f1219IO = DefaultIoScheduler.INSTANCE;
    }

    public static final CoroutineDispatcher getDefault() {
        return Default;
    }

    public static final MainCoroutineDispatcher getMain() {
        return MainDispatcherLoader.dispatcher;
    }

    public static final CoroutineDispatcher getIO() {
        return f1219IO;
    }
}
