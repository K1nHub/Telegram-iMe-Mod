package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.i_staking.StakingInteractor;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingApprovalInfo;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingTransactionPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$1 */
/* loaded from: classes4.dex */
public final class StakingTransactionPresenter$checkTokensApproval$1 extends Lambda implements Function1<?, ObservableSource<? extends Result<? extends StakingApprovalInfo>>> {
    final /* synthetic */ StakingDetailsItem $data;
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingTransactionPresenter$checkTokensApproval$1(StakingTransactionPresenter stakingTransactionPresenter, StakingDetailsItem stakingDetailsItem) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
        this.$data = stakingDetailsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public final ObservableSource<? extends Result<? extends StakingApprovalInfo>> invoke2(Object obj) {
        StakingInteractor stakingInteractor;
        stakingInteractor = this.this$0.stakingInteractor;
        return stakingInteractor.getApprovalInfo(this.$data.getId());
    }
}
