package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2178xdc1b5198 extends Lambda implements Function1<Result<? extends List<? extends BinanceTransaction>>, Unit> {
    final /* synthetic */ WalletBinancePayHistoryPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2178xdc1b5198(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter) {
        super(1);
        this.this$0 = walletBinancePayHistoryPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTransaction>> result) {
        m1355invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1355invoke(Result<? extends List<? extends BinanceTransaction>> it) {
        ResourceManager resourceManager;
        List filterTransactionsByTypeIfNeeded;
        List mapTransactionsToGroups;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTransaction>> result = it;
        if (result instanceof Result.Success) {
            filterTransactionsByTypeIfNeeded = this.this$0.filterTransactionsByTypeIfNeeded((List) ((Result.Success) result).getData());
            mapTransactionsToGroups = this.this$0.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
            if (!filterTransactionsByTypeIfNeeded.isEmpty()) {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onLoadMoreItems(mapTransactionsToGroups);
            } else {
                ((WalletBinancePayHistoryView) this.this$0.getViewState()).onLoadMoreComplete();
            }
        } else if (result instanceof Result.Error) {
            ((WalletBinancePayHistoryView) this.this$0.getViewState()).onLoadMoreError();
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletBinancePayHistoryView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
