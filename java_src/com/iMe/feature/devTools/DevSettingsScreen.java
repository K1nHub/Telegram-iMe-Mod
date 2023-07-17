package com.iMe.feature.devTools;

import android.os.Bundle;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import com.iMe.common.viewBinding.FragmentViewBindingDelegate;
import com.iMe.feature.devTools.DevSideEffects;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.databinding.ForkDevSettingsScreenBinding;
import timber.log.Timber;
/* compiled from: DevSettingsScreen.kt */
/* loaded from: classes3.dex */
public final class DevSettingsScreen extends Fragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DevSettingsScreen.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;", 0))};
    private final FragmentViewBindingDelegate binding$delegate;
    private final Lazy viewModel$delegate;

    public DevSettingsScreen() {
        super(C3417R.layout.fork_dev_settings_screen);
        Lazy lazy;
        this.binding$delegate = new FragmentViewBindingDelegate(ForkDevSettingsScreenBinding.class, this);
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new DevSettingsScreen$special$$inlined$viewModel$default$2(this, null, new DevSettingsScreen$special$$inlined$viewModel$default$1(this), null, null));
        this.viewModel$delegate = lazy;
    }

    private final ForkDevSettingsScreenBinding getBinding() {
        return (ForkDevSettingsScreenBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final DevViewModel getViewModel() {
        return (DevViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ContainerHostExtensionsKt.observe(getViewModel(), this, new DevSettingsScreen$onCreate$1(this), new DevSettingsScreen$onCreate$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$render(DevSettingsScreen devSettingsScreen, DevState devState, Continuation continuation) {
        devSettingsScreen.render(devState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object onCreate$sideEffects(DevSettingsScreen devSettingsScreen, DevSideEffects devSideEffects, Continuation continuation) {
        devSettingsScreen.sideEffects(devSideEffects);
        return Unit.INSTANCE;
    }

    private final void render(DevState devState) {
        Timber.m5i("DevState: " + devState, new Object[0]);
        getBinding().textDevScreen.setText(devState.getText());
        ProgressBar progressBar = getBinding().progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progressBar");
        ViewExtKt.visible(progressBar, devState.isLoading());
    }

    private final void sideEffects(DevSideEffects devSideEffects) {
        Timber.m5i("DevSideEffects: " + devSideEffects, new Object[0]);
        if (Intrinsics.areEqual(devSideEffects, DevSideEffects.NavigateToChat.INSTANCE)) {
            requireActivity().finish();
        } else if (Intrinsics.areEqual(devSideEffects, DevSideEffects.ShowError.INSTANCE)) {
            Timber.m7e("Show Dialog with Error", new Object[0]);
        }
    }
}
