package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
/* compiled from: CoroutineExceptionHandlerImpl.kt */
/* loaded from: classes4.dex */
public final class CoroutineExceptionHandlerImplKt {
    private static final Collection<CoroutineExceptionHandler> platformExceptionHandlers;

    public static final Collection<CoroutineExceptionHandler> getPlatformExceptionHandlers() {
        return platformExceptionHandlers;
    }

    static {
        Sequence asSequence;
        List list;
        asSequence = SequencesKt__SequencesKt.asSequence(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator());
        list = SequencesKt___SequencesKt.toList(asSequence);
        platformExceptionHandlers = list;
    }

    public static final void propagateExceptionFinalResort(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
