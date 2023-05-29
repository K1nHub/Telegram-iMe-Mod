package org.koin.androidx.viewmodel.factory;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.androidx.viewmodel.parameter.AndroidParametersHolder;
import org.koin.core.parameter.ParametersHolder;
/* compiled from: KoinViewModelFactory.kt */
/* loaded from: classes4.dex */
final class KoinViewModelFactory$create$1 extends Lambda implements Function0<ParametersHolder> {
    final /* synthetic */ AndroidParametersHolder $androidParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KoinViewModelFactory$create$1(AndroidParametersHolder androidParametersHolder) {
        super(0);
        this.$androidParams = androidParametersHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ParametersHolder invoke() {
        return this.$androidParams;
    }
}
