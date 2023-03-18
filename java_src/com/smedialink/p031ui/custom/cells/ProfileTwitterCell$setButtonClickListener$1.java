package com.smedialink.p031ui.custom.cells;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
/* compiled from: ProfileTwitterCell.kt */
/* renamed from: com.smedialink.ui.custom.cells.ProfileTwitterCell$setButtonClickListener$1 */
/* loaded from: classes3.dex */
final class ProfileTwitterCell$setButtonClickListener$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Callbacks$Callback $onButtonAddClickAction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileTwitterCell$setButtonClickListener$1(Callbacks$Callback callbacks$Callback) {
        super(1);
        this.$onButtonAddClickAction = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onButtonAddClickAction.invoke();
    }
}
