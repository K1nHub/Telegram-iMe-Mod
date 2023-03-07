package com.smedialink.p031ui.wallet.transaction;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes3.dex */
public final class WalletTransactionsPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsPresenter$startChooseNetworkDialog$1(WalletTransactionsPresenter walletTransactionsPresenter) {
        super(1);
        this.this$0 = walletTransactionsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkType networkType) {
        invoke2(networkType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkType newNetworkType) {
        NetworkType networkType;
        Intrinsics.checkNotNullParameter(newNetworkType, "newNetworkType");
        this.this$0.selectedNetworkType = newNetworkType;
        networkType = this.this$0.selectedNetworkType;
        ((WalletTransactionsView) this.this$0.getViewState()).setupNetworkType(networkType);
        WalletTransactionsPresenter.load$default(this.this$0, true, false, null, 6, null);
    }
}
