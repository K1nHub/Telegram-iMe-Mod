package com.smedialink.p031ui.custom;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.p048ui.Components.CheckBoxSquare;
/* compiled from: StakingSafeWithdrawalView.kt */
/* renamed from: com.smedialink.ui.custom.StakingSafeWithdrawalView$setupViewData$1$1$1 */
/* loaded from: classes3.dex */
final class StakingSafeWithdrawalView$setupViewData$1$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Callbacks$Callback1<Boolean> $onCheckedAction;
    final /* synthetic */ CheckBoxSquare $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingSafeWithdrawalView$setupViewData$1$1$1(CheckBoxSquare checkBoxSquare, Callbacks$Callback1<Boolean> callbacks$Callback1) {
        super(1);
        this.$this_with = checkBoxSquare;
        this.$onCheckedAction = callbacks$Callback1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        CheckBoxSquare checkBoxSquare = this.$this_with;
        checkBoxSquare.setChecked(!checkBoxSquare.isChecked(), true);
        this.$onCheckedAction.invoke(Boolean.valueOf(this.$this_with.isChecked()));
    }
}
