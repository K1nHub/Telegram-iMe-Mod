package org.koin.dsl;

import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.module.Module;
/* compiled from: DefinitionBinding.kt */
/* loaded from: classes4.dex */
public final class DefinitionBindingKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Pair<Module, InstanceFactory<?>> binds(Pair<Module, ? extends InstanceFactory<?>> pair, KClass<?>[] classes) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.checkNotNullParameter(classes, "classes");
        BeanDefinition beanDefinition = ((InstanceFactory) pair.getSecond()).getBeanDefinition();
        plus = CollectionsKt___CollectionsKt.plus((Collection) beanDefinition.getSecondaryTypes(), (Object[]) classes);
        beanDefinition.setSecondaryTypes(plus);
        for (KClass<?> kClass : classes) {
            ((Module) pair.getFirst()).saveMapping(BeanDefinitionKt.indexKey(kClass, ((InstanceFactory) pair.getSecond()).getBeanDefinition().getQualifier(), ((InstanceFactory) pair.getSecond()).getBeanDefinition().getScopeQualifier()), (InstanceFactory) pair.getSecond(), true);
        }
        return pair;
    }
}
