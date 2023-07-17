package com.iMe.p031ui.wallet.transaction;

import com.iMe.storage.domain.model.crypto.Network;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class WalletTransactionsPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<Network, Unit> {
    final /* synthetic */ WalletTransactionsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsPresenter$startChooseNetworkDialog$1(WalletTransactionsPresenter walletTransactionsPresenter) {
        super(1);
        this.this$0 = walletTransactionsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Network network) {
        invoke2(network);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Network newNetwork) {
        Network network;
        Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
        this.this$0.selectedNetwork = newNetwork;
        network = this.this$0.selectedNetwork;
        ((WalletTransactionsView) this.this$0.getViewState()).setupNetwork(network);
        WalletTransactionsPresenter.load$default(this.this$0, true, false, null, 6, null);
    }
}
