package com.iMe.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.model.staking.StakingOperationsPaged;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadStakingOperations$1 */
/* loaded from: classes4.dex */
public final class WalletTransactionsPresenter$loadStakingOperations$1 extends Lambda implements Function1<StakingOperationsPaged, Unit> {
    final /* synthetic */ boolean $isLoadMore;
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsPresenter$loadStakingOperations$1(WalletTransactionsPresenter walletTransactionsPresenter, boolean z) {
        super(1);
        this.this$0 = walletTransactionsPresenter;
        this.$isLoadMore = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(StakingOperationsPaged stakingOperationsPaged) {
        invoke2(stakingOperationsPaged);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(StakingOperationsPaged data) {
        List<BaseNode> mapStakingOperationsToGroups;
        Intrinsics.checkNotNullParameter(data, "data");
        if (!data.getOperations().isEmpty()) {
            mapStakingOperationsToGroups = this.this$0.mapStakingOperationsToGroups(data.getOperations());
            this.this$0.stakingOperationsCursor = data.getNextCursor();
            if (this.$isLoadMore) {
                ((WalletTransactionsView) this.this$0.getViewState()).onLoadMoreItems(mapStakingOperationsToGroups);
            } else {
                ((WalletTransactionsView) this.this$0.getViewState()).renderItems(mapStakingOperationsToGroups);
            }
        } else if (!this.$isLoadMore) {
            this.this$0.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
        }
        if (data.getNextCursor() == null) {
            ((WalletTransactionsView) this.this$0.getViewState()).onLoadMoreComplete();
        }
    }
}
