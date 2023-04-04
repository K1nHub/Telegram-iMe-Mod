package com.iMe.p032ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadTransactions$1 */
/* loaded from: classes4.dex */
public final class WalletTransactionsPresenter$loadTransactions$1 extends Lambda implements Function1<List<? extends Transaction>, Unit> {
    final /* synthetic */ boolean $forceUpdate;
    final /* synthetic */ boolean $isLoadMore;
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsPresenter$loadTransactions$1(WalletTransactionsPresenter walletTransactionsPresenter, boolean z, boolean z2) {
        super(1);
        this.this$0 = walletTransactionsPresenter;
        this.$isLoadMore = z;
        this.$forceUpdate = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Transaction> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<? extends Transaction> data) {
        List filterTransactionsByTypeIfNeeded;
        List<BaseNode> mapTransactionsToGroups;
        Intrinsics.checkNotNullParameter(data, "data");
        filterTransactionsByTypeIfNeeded = this.this$0.filterTransactionsByTypeIfNeeded(data);
        if (!filterTransactionsByTypeIfNeeded.isEmpty()) {
            mapTransactionsToGroups = this.this$0.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
            if (this.$isLoadMore) {
                ((WalletTransactionsView) this.this$0.getViewState()).onLoadMoreItems(mapTransactionsToGroups);
                return;
            } else if (this.$forceUpdate) {
                ((WalletTransactionsView) this.this$0.getViewState()).renderInitialItems(mapTransactionsToGroups);
                return;
            } else {
                ((WalletTransactionsView) this.this$0.getViewState()).renderItems(mapTransactionsToGroups);
                return;
            }
        }
        if (!this.$isLoadMore) {
            this.this$0.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
        }
        ((WalletTransactionsView) this.this$0.getViewState()).onLoadMoreComplete();
    }
}
