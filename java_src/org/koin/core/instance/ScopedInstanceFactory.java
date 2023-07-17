package org.koin.core.instance;

import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: ScopedInstanceFactory.kt */
/* loaded from: classes4.dex */
public final class ScopedInstanceFactory<T> extends InstanceFactory<T> {
    private HashMap<String, T> values;

    public boolean isCreated(InstanceContext instanceContext) {
        Scope scope;
        return this.values.get((instanceContext == null || (scope = instanceContext.getScope()) == null) ? null : scope.getId()) != null;
    }

    public void drop(Scope scope) {
        if (scope != null) {
            Function1<T, Unit> onClose = getBeanDefinition().getCallbacks().getOnClose();
            if (onClose != null) {
                onClose.invoke(this.values.get(scope.getId()));
            }
            this.values.remove(scope.getId());
        }
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T create(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.values.get(context.getScope().getId()) == null) {
            return (T) super.create(context);
        }
        T t = this.values.get(context.getScope().getId());
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(("Scoped instance not found for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
    }

    @Override // org.koin.core.instance.InstanceFactory
    public T get(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(context.getScope().getScopeQualifier(), getBeanDefinition().getScopeQualifier())) {
            throw new IllegalStateException(("Wrong Scope: trying to open instance for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
        }
        KoinPlatformTools.INSTANCE.m1639synchronized(this, new ScopedInstanceFactory$get$1(this, context));
        T t = this.values.get(context.getScope().getId());
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(("Scoped instance not found for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
    }
}
