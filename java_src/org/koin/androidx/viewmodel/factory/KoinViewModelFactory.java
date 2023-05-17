package org.koin.androidx.viewmodel.factory;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.androidx.viewmodel.parameter.AndroidParametersHolder;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
/* compiled from: KoinViewModelFactory.kt */
/* loaded from: classes4.dex */
public final class KoinViewModelFactory implements ViewModelProvider.Factory {
    private final KClass<? extends ViewModel> kClass;
    private final Function0<ParametersHolder> params;
    private final Qualifier qualifier;
    private final Scope scope;

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* synthetic */ ViewModel create(Class cls) {
        return ViewModelProvider.Factory.CC.$default$create(this, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public KoinViewModelFactory(KClass<? extends ViewModel> kClass, Scope scope, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.kClass = kClass;
        this.scope = scope;
        this.qualifier = qualifier;
        this.params = function0;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return (T) this.scope.get(this.kClass, this.qualifier, new KoinViewModelFactory$create$1(new AndroidParametersHolder(this.params, extras)));
    }
}
