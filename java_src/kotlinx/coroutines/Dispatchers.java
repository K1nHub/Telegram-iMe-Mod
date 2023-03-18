package kotlinx.coroutines;

import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
/* compiled from: Dispatchers.kt */
/* loaded from: classes4.dex */
public final class Dispatchers {

    /* renamed from: IO */
    private static final CoroutineDispatcher f1218IO;
    public static final Dispatchers INSTANCE = new Dispatchers();
    private static final CoroutineDispatcher Default = CoroutineContextKt.createDefaultDispatcher();

    private Dispatchers() {
    }

    static {
        Unconfined unconfined = Unconfined.INSTANCE;
        f1218IO = DefaultScheduler.INSTANCE.getIO();
    }

    public static final CoroutineDispatcher getDefault() {
        return Default;
    }

    public static final MainCoroutineDispatcher getMain() {
        return MainDispatcherLoader.dispatcher;
    }

    public static final CoroutineDispatcher getIO() {
        return f1218IO;
    }
}
