package org.koin.dsl;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.definition.KoinDefinition;
/* compiled from: DefinitionBinding.kt */
/* loaded from: classes6.dex */
public final class DefinitionBindingKt {
    public static final KoinDefinition<?> binds(KoinDefinition<?> koinDefinition, KClass<?>[] classes) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(koinDefinition, "<this>");
        Intrinsics.checkNotNullParameter(classes, "classes");
        BeanDefinition<?> beanDefinition = koinDefinition.getFactory().getBeanDefinition();
        plus = CollectionsKt___CollectionsKt.plus((Collection) beanDefinition.getSecondaryTypes(), (Object[]) classes);
        beanDefinition.setSecondaryTypes(plus);
        for (KClass<?> kClass : classes) {
            koinDefinition.getModule().saveMapping(BeanDefinitionKt.indexKey(kClass, koinDefinition.getFactory().getBeanDefinition().getQualifier(), koinDefinition.getFactory().getBeanDefinition().getScopeQualifier()), koinDefinition.getFactory());
        }
        return koinDefinition;
    }
}
