package com.iMe.utils.extentions.common;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SimpleInitExtensions.kt */
/* loaded from: classes4.dex */
final class SimpleInitExtensionsKt$quickInit$1 extends Lambda implements Function3<View, Item, Integer, Unit> {
    final /* synthetic */ Function3<View, Item, Integer, Unit> $bind;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleInitExtensionsKt$quickInit$1(Function3<? super View, ? super Item, ? super Integer, Unit> function3) {
        super(3);
        this.$bind = function3;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(View view, Object obj, Integer num) {
        invoke(view, (View) obj, num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(View $receiver, Item item, int i) {
        Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
        this.$bind.invoke($receiver, item, Integer.valueOf(i));
    }
}
