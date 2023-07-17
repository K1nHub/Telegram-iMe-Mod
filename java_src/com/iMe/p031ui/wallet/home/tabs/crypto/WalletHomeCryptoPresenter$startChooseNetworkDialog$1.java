package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<Network, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$startChooseNetworkDialog$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Network network) {
        invoke2(network);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Network newNetwork) {
        String currentNetworkId;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        RxEventBus rxEventBus;
        Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
        String fullName = newNetwork.getFullName();
        currentNetworkId = this.this$0.getCurrentNetworkId();
        if (Intrinsics.areEqual(fullName, currentNetworkId)) {
            return;
        }
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setNetwork(newNetwork);
        ((WalletHomeCryptoView) this.this$0.getViewState()).renderNodes(WalletHomeCryptoPresenter.configureUiItems$default(this.this$0, null, true, null, 5, null));
        rxEventBus = this.this$0.rxEventBus;
        rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }
}
