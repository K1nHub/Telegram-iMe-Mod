package org.koin.core.scope;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope$resolveValue$4$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Scope $this_run;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$resolveValue$4$1(Scope scope) {
        super(0);
        this.$this_run = scope;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$this_run.get_parameterStack().clear();
    }
}
