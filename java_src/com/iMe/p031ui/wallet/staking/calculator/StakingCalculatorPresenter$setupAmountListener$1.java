package com.iMe.p031ui.wallet.staking.calculator;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.StatisticActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingCalculatorPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$setupAmountListener$1 */
/* loaded from: classes4.dex */
public final class StakingCalculatorPresenter$setupAmountListener$1 extends Lambda implements Function1<Double, StatisticActivity.ChartViewData> {
    final /* synthetic */ StakingCalculatorPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorPresenter$setupAmountListener$1(StakingCalculatorPresenter stakingCalculatorPresenter) {
        super(1);
        this.this$0 = stakingCalculatorPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final StatisticActivity.ChartViewData invoke(Double amount) {
        StatisticActivity.ChartViewData mapProfitPrognosis;
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.this$0.selectedAmount = amount.doubleValue();
        mapProfitPrognosis = this.this$0.mapProfitPrognosis();
        return mapProfitPrognosis;
    }
}
