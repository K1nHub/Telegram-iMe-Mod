package org.koin.core.module.dsl;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.qualifier.Qualifier;
/* compiled from: OptionDSL.kt */
/* loaded from: classes4.dex */
public final class OptionDSLKt {
    public static final <T> KoinDefinition<T> onOptions(KoinDefinition<T> koinDefinition, Function1<? super BeanDefinition<T>, Unit> function1) {
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        if (function1 != null) {
            BeanDefinition<T> beanDefinition = koinDefinition.getFactory().getBeanDefinition();
            Qualifier qualifier = beanDefinition.getQualifier();
            function1.invoke(beanDefinition);
            if (!Intrinsics.areEqual(beanDefinition.getQualifier(), qualifier)) {
                koinDefinition.getModule().indexPrimaryType(koinDefinition.getFactory());
            }
            if (!beanDefinition.getSecondaryTypes().isEmpty()) {
                koinDefinition.getModule().indexSecondaryTypes(koinDefinition.getFactory());
            }
            if (beanDefinition.get_createdAtStart() && (koinDefinition.getFactory() instanceof SingleInstanceFactory)) {
                koinDefinition.getModule().prepareForCreationAtStart((SingleInstanceFactory) koinDefinition.getFactory());
            }
        }
        return koinDefinition;
    }
}
