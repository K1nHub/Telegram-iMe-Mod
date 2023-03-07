package org.koin.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Koin.kt */
/* loaded from: classes4.dex */
public final class Koin$createEagerInstances$duration$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Koin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$createEagerInstances$duration$1(Koin koin) {
        super(0);
        this.this$0 = koin;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getInstanceRegistry().createAllEagerInstances$koin_core();
    }
}
