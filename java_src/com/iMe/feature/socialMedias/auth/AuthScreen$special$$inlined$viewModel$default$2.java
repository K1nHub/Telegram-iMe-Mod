package com.iMe.feature.socialMedias.auth;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.AndroidKoinScopeExtKt;
import org.koin.androidx.viewmodel.GetViewModelKt;
import org.koin.core.qualifier.Qualifier;
/* compiled from: FragmentVM.kt */
/* loaded from: classes3.dex */
public final class AuthScreen$special$$inlined$viewModel$default$2 extends Lambda implements Function0<AuthViewModel> {
    final /* synthetic */ Function0 $extrasProducer;
    final /* synthetic */ Function0 $ownerProducer;
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ Fragment $this_viewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthScreen$special$$inlined$viewModel$default$2(Fragment fragment, Qualifier qualifier, Function0 function0, Function0 function02, Function0 function03) {
        super(0);
        this.$this_viewModel = fragment;
        this.$qualifier = qualifier;
        this.$ownerProducer = function0;
        this.$extrasProducer = function02;
        this.$parameters = function03;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.iMe.feature.socialMedias.auth.AuthViewModel, androidx.lifecycle.ViewModel] */
    @Override // kotlin.jvm.functions.Function0
    public final AuthViewModel invoke() {
        CreationExtras defaultViewModelCreationExtras;
        ?? resolveViewModel;
        Fragment fragment = this.$this_viewModel;
        Qualifier qualifier = this.$qualifier;
        Function0 function0 = this.$ownerProducer;
        Function0 function02 = this.$extrasProducer;
        Function0 function03 = this.$parameters;
        ViewModelStore viewModelStore = ((ViewModelStoreOwner) function0.invoke()).getViewModelStore();
        if (function02 == null || (defaultViewModelCreationExtras = (CreationExtras) function02.invoke()) == null) {
            defaultViewModelCreationExtras = fragment.getDefaultViewModelCreationExtras();
            Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
        }
        resolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(AuthViewModel.class), viewModelStore, (i & 4) != 0 ? null : null, defaultViewModelCreationExtras, (i & 16) != 0 ? null : qualifier, AndroidKoinScopeExtKt.getKoinScope(fragment), (i & 64) != 0 ? null : function03);
        return resolveViewModel;
    }
}
