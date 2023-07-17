package com.iMe.utils.extentions.common;

import android.view.View;
import com.iMe.fork.utils.Callbacks$Callback1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewExt.kt */
/* loaded from: classes4.dex */
public final class ViewExtKt$setMixedClickListener$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Callbacks$Callback1<View> $listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewExtKt$setMixedClickListener$1(Callbacks$Callback1<View> callbacks$Callback1) {
        super(1);
        this.$listener = callbacks$Callback1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.$listener.invoke(view);
    }
}
