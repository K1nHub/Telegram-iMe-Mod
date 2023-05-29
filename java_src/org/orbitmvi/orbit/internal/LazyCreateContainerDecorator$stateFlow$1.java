package org.orbitmvi.orbit.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyCreateContainerDecorator.kt */
/* loaded from: classes4.dex */
public final class LazyCreateContainerDecorator$stateFlow$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ LazyCreateContainerDecorator<STATE, SIDE_EFFECT> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyCreateContainerDecorator$stateFlow$1(LazyCreateContainerDecorator<STATE, SIDE_EFFECT> lazyCreateContainerDecorator) {
        super(0);
        this.this$0 = lazyCreateContainerDecorator;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.runOnCreate();
    }
}
