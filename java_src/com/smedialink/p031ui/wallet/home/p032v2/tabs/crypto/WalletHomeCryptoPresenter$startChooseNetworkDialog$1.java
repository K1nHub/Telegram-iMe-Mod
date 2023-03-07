package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$startChooseNetworkDialog$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoPresenter;
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
