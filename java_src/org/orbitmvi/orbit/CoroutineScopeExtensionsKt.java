package org.orbitmvi.orbit;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.internal.LazyCreateContainerDecorator;
import org.orbitmvi.orbit.internal.RealContainer;
import org.orbitmvi.orbit.internal.TestContainerDecorator;
/* compiled from: CoroutineScopeExtensions.kt */
/* loaded from: classes4.dex */
public final class CoroutineScopeExtensionsKt {
    public static final <STATE, SIDE_EFFECT> Container<STATE, SIDE_EFFECT> container(CoroutineScope coroutineScope, STATE initialState, Container.Settings settings, Function1<? super STATE, Unit> function1) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(settings, "settings");
        if (function1 == null) {
            return new TestContainerDecorator(initialState, coroutineScope, new RealContainer(initialState, coroutineScope, settings, null, 8, null));
        }
        return new TestContainerDecorator(initialState, coroutineScope, new LazyCreateContainerDecorator(new RealContainer(initialState, coroutineScope, settings, null, 8, null), function1));
    }
}
