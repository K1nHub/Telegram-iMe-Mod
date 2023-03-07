package org.koin.core.instance;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleInstanceFactory.kt */
/* loaded from: classes4.dex */
public final class SingleInstanceFactory$get$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ InstanceContext $context;
    final /* synthetic */ SingleInstanceFactory<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleInstanceFactory$get$1(SingleInstanceFactory<T> singleInstanceFactory, InstanceContext instanceContext) {
        super(0);
        this.this$0 = singleInstanceFactory;
        this.$context = instanceContext;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.this$0.isCreated(this.$context)) {
            return;
        }
        SingleInstanceFactory<T> singleInstanceFactory = this.this$0;
        ((SingleInstanceFactory) singleInstanceFactory).value = singleInstanceFactory.create(this.$context);
    }
}
