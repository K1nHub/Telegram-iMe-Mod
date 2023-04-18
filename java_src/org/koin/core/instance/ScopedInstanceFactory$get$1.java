package org.koin.core.instance;

import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ScopedInstanceFactory.kt */
/* loaded from: classes4.dex */
final class ScopedInstanceFactory$get$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ InstanceContext $context;
    final /* synthetic */ ScopedInstanceFactory<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScopedInstanceFactory$get$1(ScopedInstanceFactory<T> scopedInstanceFactory, InstanceContext instanceContext) {
        super(0);
        this.this$0 = scopedInstanceFactory;
        this.$context = instanceContext;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        HashMap hashMap;
        if (this.this$0.isCreated(this.$context)) {
            return;
        }
        hashMap = ((ScopedInstanceFactory) this.this$0).values;
        hashMap.put(this.$context.getScope().getId(), this.this$0.create(this.$context));
    }
}
