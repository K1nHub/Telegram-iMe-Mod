package io.ktor.network.selector;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectorManager.kt */
/* loaded from: classes4.dex */
public final class SelectorManagerKt {
    public static final SelectorManager SelectorManager(CoroutineContext dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new ActorSelectorManager(dispatcher);
    }
}
