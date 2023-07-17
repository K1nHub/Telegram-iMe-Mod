package org.koin.core.instance;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: SingleInstanceFactory.kt */
/* loaded from: classes4.dex */
public final class SingleInstanceFactory<T> extends InstanceFactory<T> {
    private T value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleInstanceFactory(BeanDefinition<T> beanDefinition) {
        super(beanDefinition);
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
    }

    private final T getValue() {
        T t = this.value;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Single instance created couldn't return value".toString());
    }

    public boolean isCreated(InstanceContext instanceContext) {
        return this.value != null;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T create(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.value == null) {
            return (T) super.create(context);
        }
        return getValue();
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T get(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        KoinPlatformTools.INSTANCE.m1639synchronized(this, new SingleInstanceFactory$get$1(this, context));
        return getValue();
    }
}
