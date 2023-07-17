package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class WalletConnectPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<Network, Unit> {
    final /* synthetic */ WalletConnectPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectPresenter$startChooseNetworkDialog$1(WalletConnectPresenter walletConnectPresenter) {
        super(1);
        this.this$0 = walletConnectPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Network network) {
        invoke2(network);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Network newNetwork) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        RxEventBus rxEventBus;
        Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setNetwork(newNetwork);
        rxEventBus = this.this$0.rxEventBus;
        rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }
}
