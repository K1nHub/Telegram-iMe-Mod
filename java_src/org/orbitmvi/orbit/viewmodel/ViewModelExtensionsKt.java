package org.orbitmvi.orbit.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.CoroutineScopeExtensionsKt;
/* compiled from: ViewModelExtensions.kt */
/* loaded from: classes4.dex */
public final class ViewModelExtensionsKt {
    public static /* synthetic */ Container container$default(ViewModel viewModel, Object obj, Container.Settings settings, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            settings = new Container.Settings(0, null, null, null, 0L, 31, null);
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return container(viewModel, obj, settings, function1);
    }

    public static final <STATE, SIDE_EFFECT> Container<STATE, SIDE_EFFECT> container(ViewModel viewModel, STATE initialState, Container.Settings settings, Function1<? super STATE, Unit> function1) {
        Intrinsics.checkNotNullParameter(viewModel, "<this>");
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(settings, "settings");
        return CoroutineScopeExtensionsKt.container(ViewModelKt.getViewModelScope(viewModel), initialState, settings, function1);
    }
}
