package com.iMe.feature.devTools;

import androidx.lifecycle.ViewModel;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.ContainerHost;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
import org.orbitmvi.orbit.viewmodel.ViewModelExtensionsKt;
/* compiled from: DevViewModel.kt */
/* loaded from: classes3.dex */
public final class DevViewModel extends ViewModel implements ContainerHost<DevState, DevSideEffects> {
    private final Container<DevState, DevSideEffects> container;
    private final DevUseCase devUseCase;

    public DevViewModel(DevUseCase devUseCase) {
        Intrinsics.checkNotNullParameter(devUseCase, "devUseCase");
        this.devUseCase = devUseCase;
        this.container = ViewModelExtensionsKt.container$default(this, new DevState(null, false, 3, null), null, new DevViewModel$container$1(this), 2, null);
    }

    @Override // org.orbitmvi.orbit.ContainerHost
    public Container<DevState, DevSideEffects> getContainer() {
        return this.container;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCreate() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new DevViewModel$onCreate$1(this, null), 1, null);
    }
}
