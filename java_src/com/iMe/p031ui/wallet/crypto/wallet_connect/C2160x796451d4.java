package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2160x796451d4 extends Lambda implements Function1<DomainRxEvents.NetworkUpdated, Unit> {
    final /* synthetic */ WalletConnectPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2160x796451d4(WalletConnectPresenter walletConnectPresenter) {
        super(1);
        this.this$0 = walletConnectPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.NetworkUpdated networkUpdated) {
        m1411invoke(networkUpdated);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1411invoke(DomainRxEvents.NetworkUpdated it) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        ((WalletConnectView) this.this$0.getViewState()).setupNetworkType(cryptoPreferenceHelper.getNetworkType());
    }
}
