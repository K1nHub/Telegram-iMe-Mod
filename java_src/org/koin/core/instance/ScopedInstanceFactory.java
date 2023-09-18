package org.koin.core.instance;

import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: ScopedInstanceFactory.kt */
/* loaded from: classes6.dex */
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
    public T get(final InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(context.getScope().getScopeQualifier(), getBeanDefinition().getScopeQualifier())) {
            throw new IllegalStateException(("Wrong Scope: trying to open instance for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
        }
        KoinPlatformTools.INSTANCE.m1696synchronized(this, new Function0<Unit>(this) { // from class: org.koin.core.instance.ScopedInstanceFactory$get$1
            final /* synthetic */ ScopedInstanceFactory<T> this$0;

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
                HashMap hashMap;
                if (this.this$0.isCreated(context)) {
                    return;
                }
                hashMap = ((ScopedInstanceFactory) this.this$0).values;
                hashMap.put(context.getScope().getId(), this.this$0.create(context));
            }
        });
        T t = this.values.get(context.getScope().getId());
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(("Scoped instance not found for " + context.getScope().getId() + " in " + getBeanDefinition()).toString());
    }
}
