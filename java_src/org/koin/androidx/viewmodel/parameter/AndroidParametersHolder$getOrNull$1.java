package org.koin.androidx.viewmodel.parameter;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
/* compiled from: AndroidParametersHolder.kt */
/* loaded from: classes4.dex */
final class AndroidParametersHolder$getOrNull$1 extends Lambda implements Function0<T> {
    final /* synthetic */ KClass<?> $clazz;
    final /* synthetic */ AndroidParametersHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidParametersHolder$getOrNull$1(AndroidParametersHolder androidParametersHolder, KClass<?> kClass) {
        super(0);
        this.this$0 = androidParametersHolder;
        this.$clazz = kClass;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final T invoke() {
        ?? orNull;
        orNull = super/*org.koin.core.parameter.ParametersHolder*/.getOrNull(this.$clazz);
        return orNull;
    }
}