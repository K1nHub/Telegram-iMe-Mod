package com.iMe.p032ui.wallet.staking.transaction;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingTransactionPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2 */
/* loaded from: classes4.dex */
public final class StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2 extends Lambda implements Function0<String> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2(StakingTransactionPresenter stakingTransactionPresenter) {
        super(0);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        String safeWithdrawalDurationText;
        safeWithdrawalDurationText = this.this$0.getSafeWithdrawalDurationText();
        return safeWithdrawalDurationText;
    }
}
