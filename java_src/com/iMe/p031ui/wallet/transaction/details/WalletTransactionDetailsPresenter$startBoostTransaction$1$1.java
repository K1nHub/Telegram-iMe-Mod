package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$startBoostTransaction$1$1 */
/* loaded from: classes4.dex */
public final class WalletTransactionDetailsPresenter$startBoostTransaction$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Transaction $this_with;
    final /* synthetic */ WalletTransactionDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionDetailsPresenter$startBoostTransaction$1$1(WalletTransactionDetailsPresenter walletTransactionDetailsPresenter, Transaction transaction) {
        super(0);
        this.this$0 = walletTransactionDetailsPresenter;
        this.$this_with = transaction;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.boostTransaction(((Transaction.Crypto) this.$this_with).getTxHash());
    }
}
