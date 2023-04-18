package com.iMe.p031ui.wallet.home.old;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAttachAlertPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes.dex */
public final class WalletAttachAlertPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ WalletAttachAlertPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAttachAlertPresenter$startChooseNetworkDialog$1(WalletAttachAlertPresenter walletAttachAlertPresenter) {
        super(1);
        this.this$0 = walletAttachAlertPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkType networkType) {
        invoke2(networkType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkType newNetworkType) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(newNetworkType, "newNetworkType");
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setNetworkType(newNetworkType);
        this.this$0.resetCache();
        this.this$0.getWalletData(true);
    }
}
