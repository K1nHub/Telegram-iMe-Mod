package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p031ui.custom.TimeWithClockView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: StakingOperationProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingOperationProvider$convert$1 */
/* loaded from: classes.dex */
final class StakingOperationProvider$convert$1 extends Lambda implements Function1<TimeWithClockView, Unit> {
    final /* synthetic */ StakingOperationItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationProvider$convert$1(StakingOperationItem stakingOperationItem) {
        super(1);
        this.$item = stakingOperationItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TimeWithClockView timeWithClockView) {
        invoke2(timeWithClockView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TimeWithClockView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setTime(this.$item);
    }
}
