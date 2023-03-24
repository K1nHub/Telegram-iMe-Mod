package com.smedialink.p031ui.wallet.donations;

import com.smedialink.mapper.transaction.TransactionUiMappingKt;
import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.donations.WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2153x571632f4 extends Lambda implements Function1<Result<? extends List<? extends Transaction>>, Unit> {
    final /* synthetic */ WalletDonationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2153x571632f4(WalletDonationsPresenter walletDonationsPresenter) {
        super(1);
        this.this$0 = walletDonationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Transaction>> result) {
        m1350invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1350invoke(Result<? extends List<? extends Transaction>> it) {
        ResourceManager resourceManager;
        int collectionSizeOrDefault;
        List mutableList;
        List<TransactionItem> list;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends Transaction>> result = it;
        this.this$0.transactionsResultState = result;
        if (result instanceof Result.Success) {
            WalletDonationsPresenter walletDonationsPresenter = this.this$0;
            Iterable<Transaction> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Transaction transaction : iterable) {
                arrayList.add(TransactionUiMappingKt.mapToUI(transaction));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            walletDonationsPresenter.transactions = mutableList;
            list = this.this$0.transactions;
            ((WalletDonationsView) this.this$0.getViewState()).onDonationsTransactionsLoaded(list);
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletDonationsView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
            ((WalletDonationsView) this.this$0.getViewState()).updateScreenAfterLoad();
        } else if (result instanceof Result.Loading) {
            ((WalletDonationsView) this.this$0.getViewState()).updateScreenAfterLoad();
        }
    }
}
