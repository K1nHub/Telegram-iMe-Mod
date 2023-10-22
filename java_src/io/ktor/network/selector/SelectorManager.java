package io.ktor.network.selector;

import java.io.Closeable;
import java.nio.channels.spi.SelectorProvider;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: SelectorManager.kt */
/* loaded from: classes4.dex */
public interface SelectorManager extends CoroutineScope, Closeable {
    SelectorProvider getProvider();

    void notifyClosed(Selectable selectable);

    Object select(Selectable selectable, SelectInterest selectInterest, Continuation<? super Unit> continuation);
}
