package com.iMe.p031ui.wallet.staking.calculator;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.StatisticActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingCalculatorPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$setupAmountListener$2 */
/* loaded from: classes4.dex */
public final class StakingCalculatorPresenter$setupAmountListener$2 extends Lambda implements Function1<StatisticActivity.ChartViewData, Unit> {
    final /* synthetic */ StakingCalculatorPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorPresenter$setupAmountListener$2(StakingCalculatorPresenter stakingCalculatorPresenter) {
        super(1);
        this.this$0 = stakingCalculatorPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(StatisticActivity.ChartViewData chartViewData) {
        invoke2(chartViewData);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(StatisticActivity.ChartViewData chartViewData) {
        this.this$0.chartViewData = chartViewData;
        ((StakingCalculatorView) this.this$0.getViewState()).updateStakingCalculatorViews();
    }
}
