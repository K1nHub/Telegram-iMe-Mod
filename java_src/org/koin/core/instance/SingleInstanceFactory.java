package org.koin.core.instance;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.p041mp.KoinPlatformTools;
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
    public T get(final InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        KoinPlatformTools.INSTANCE.m2171synchronized(this, new Function0<Unit>(this) { // from class: org.koin.core.instance.SingleInstanceFactory$get$1
            final /* synthetic */ SingleInstanceFactory<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (this.this$0.isCreated(context)) {
                    return;
                }
                SingleInstanceFactory<T> singleInstanceFactory = this.this$0;
                ((SingleInstanceFactory) singleInstanceFactory).value = singleInstanceFactory.create(context);
            }
        });
        return getValue();
    }
}
