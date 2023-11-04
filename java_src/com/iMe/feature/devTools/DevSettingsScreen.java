package com.iMe.feature.devTools;

import android.os.Bundle;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.iMe.common.viewBinding.FragmentViewBindingDelegate;
import com.iMe.feature.devTools.DevSideEffects;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.koin.android.ext.android.AndroidKoinScopeExtKt;
import org.koin.androidx.viewmodel.GetViewModelKt;
import org.koin.core.qualifier.Qualifier;
import org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkDevSettingsScreenBinding;
import timber.log.Timber;
/* compiled from: DevSettingsScreen.kt */
/* loaded from: classes3.dex */
public final class DevSettingsScreen extends Fragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DevSettingsScreen.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;", 0))};
    private final FragmentViewBindingDelegate binding$delegate;
    private final Lazy viewModel$delegate;

    public DevSettingsScreen() {
        super(C3634R.layout.fork_dev_settings_screen);
        Lazy lazy;
        this.binding$delegate = new FragmentViewBindingDelegate(ForkDevSettingsScreenBinding.class, this);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.iMe.feature.devTools.DevSettingsScreen$special$$inlined$viewModel$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<DevViewModel>() { // from class: com.iMe.feature.devTools.DevSettingsScreen$special$$inlined$viewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v3, types: [com.iMe.feature.devTools.DevViewModel, androidx.lifecycle.ViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final DevViewModel invoke() {
                CreationExtras defaultViewModelCreationExtras;
                Fragment fragment = Fragment.this;
                Qualifier qualifier = r2;
                Function0 function02 = function0;
                Function0 function03 = r4;
                Function0 function04 = r5;
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) function02.invoke()).getViewModelStore();
                if (function03 == null || (defaultViewModelCreationExtras = (CreationExtras) function03.invoke()) == null) {
                    defaultViewModelCreationExtras = fragment.getDefaultViewModelCreationExtras();
                    Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
                }
                return GetViewModelKt.resolveViewModel$default(Reflection.getOrCreateKotlinClass(DevViewModel.class), viewModelStore, null, defaultViewModelCreationExtras, qualifier, AndroidKoinScopeExtKt.getKoinScope(fragment), function04, 4, null);
            }
        });
        this.viewModel$delegate = lazy;
    }

    private final ForkDevSettingsScreenBinding getBinding() {
        return (ForkDevSettingsScreenBinding) this.binding$delegate.getValue2((Fragment) this, $$delegatedProperties[0]);
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
