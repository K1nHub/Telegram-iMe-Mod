package org.koin.androidx.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.androidx.viewmodel.factory.KoinViewModelFactory;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: GetViewModel.kt */
/* loaded from: classes6.dex */
public final class GetViewModelKt {
    public static /* synthetic */ ViewModel resolveViewModel$default(KClass kClass, ViewModelStore viewModelStore, String str, CreationExtras creationExtras, Qualifier qualifier, Scope scope, Function0 function0, int i, Object obj) {
        return resolveViewModel(kClass, viewModelStore, (i & 4) != 0 ? null : str, creationExtras, (i & 16) != 0 ? null : qualifier, scope, (i & 64) != 0 ? null : function0);
    }

    public static final <T extends ViewModel> T resolveViewModel(KClass<T> vmClass, ViewModelStore viewModelStore, String str, CreationExtras extras, Qualifier qualifier, Scope scope, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(vmClass, "vmClass");
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Class<T> javaClass = JvmClassMappingKt.getJavaClass(vmClass);
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStore, new KoinViewModelFactory(vmClass, scope, qualifier, function0), extras);
        if (qualifier != null) {
            return (T) viewModelProvider.get(qualifier.getValue(), javaClass);
        }
        if (str != null) {
            return (T) viewModelProvider.get(str, javaClass);
        }
        return (T) viewModelProvider.get(javaClass);
    }
}
