package com.iMe.p032ui.wallet.crypto.wallet_connect;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes3.dex */
public final class WalletConnectPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ WalletConnectPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectPresenter$startChooseNetworkDialog$1(WalletConnectPresenter walletConnectPresenter) {
        super(1);
        this.this$0 = walletConnectPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkType networkType) {
        invoke2(networkType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkType newNetworkType) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        RxEventBus rxEventBus;
        Intrinsics.checkNotNullParameter(newNetworkType, "newNetworkType");
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setNetworkType(newNetworkType);
        rxEventBus = this.this$0.rxEventBus;
        rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }
}
