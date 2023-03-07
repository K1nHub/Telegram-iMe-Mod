package com.smedialink.utils.extentions.common;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: ViewExt.kt */
/* loaded from: classes3.dex */
final class ViewExtKt$setRightDrawableOnClickListener$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Runnable $action;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewExtKt$setRightDrawableOnClickListener$2(Runnable runnable) {
        super(0);
        this.$action = runnable;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$action.run();
    }
}
