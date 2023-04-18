package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2237x6d7572a3 extends Lambda implements Function1<Result<? extends List<? extends BinanceTransaction>>, Unit> {
    final /* synthetic */ boolean $forceUpdate$inlined;
    final /* synthetic */ WalletBinancePayHistoryPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2237x6d7572a3(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter, boolean z) {
        super(1);
        this.this$0 = walletBinancePayHistoryPresenter;
        this.$forceUpdate$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTransaction>> result) {
        m1450invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1450invoke(Result<? extends List<? extends BinanceTransaction>> it) {
        ResourceManager resourceManager;
        List filterTransactionsByTypeIfNeeded;
        List<BaseNode> mapTransactionsToGroups;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTransaction>> result = it;
        if (result instanceof Result.Success) {
            WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter = this.this$0;
            filterTransactionsByTypeIfNeeded = walletBinancePayHistoryPresenter.filterTransactionsByTypeIfNeeded((List) ((Result.Success) result).getData());
            mapTransactionsToGroups = walletBinancePayHistoryPresenter.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
            if (mapTransactionsToGroups.isEmpty()) {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onEmptyState();
            } else {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onLoadedTransactions(mapTransactionsToGroups);
            }
        } else if (result instanceof Result.Loading) {
            if (this.$forceUpdate$inlined) {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).showRefreshing(true);
            } else {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onLoadingState();
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
            resourceManager = this.this$0.resourceManager;
            ((WalletBinancePayHistoryView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}
