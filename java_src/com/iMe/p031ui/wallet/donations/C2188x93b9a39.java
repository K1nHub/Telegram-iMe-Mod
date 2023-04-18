package com.iMe.p031ui.wallet.donations;

import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2188x93b9a39 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ WalletDonationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2188x93b9a39(WalletDonationsPresenter walletDonationsPresenter) {
        super(1);
        this.this$0 = walletDonationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1416invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1416invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        List list;
        List<TransactionItem> list2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.currentDonationsAddress = "";
            this.this$0.walletBalance = null;
            list = this.this$0.transactions;
            list.clear();
            list2 = this.this$0.transactions;
            ((WalletDonationsView) this.this$0.getViewState()).onDonationsTransactionsLoaded(list2);
            ((WalletDonationsView) this.this$0.getViewState()).updateScreenAfterLoad();
            this.this$0.updateChatDonateAvailable();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletDonationsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
