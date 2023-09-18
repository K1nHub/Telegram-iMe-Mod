package org.koin.core.instance;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
/* compiled from: FactoryInstanceFactory.kt */
/* loaded from: classes6.dex */
public final class FactoryInstanceFactory<T> extends InstanceFactory<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FactoryInstanceFactory(BeanDefinition<T> beanDefinition) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T get(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return create(context);
    }
}
