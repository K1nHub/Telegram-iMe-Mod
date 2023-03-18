package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay;

import android.net.Uri;
import com.smedialink.common.AppRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2167xc9b19749 extends Lambda implements Function1<RxEvent, Unit> {
    final /* synthetic */ WalletHomeBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2167xc9b19749(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter) {
        super(1);
        this.this$0 = walletHomeBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
        m1351invoke(rxEvent);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1351invoke(RxEvent it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        RxEvent rxEvent = it;
        if (rxEvent instanceof AppRxEvents.BinanceAuthHandled) {
            AppRxEvents.BinanceAuthHandled binanceAuthHandled = (AppRxEvents.BinanceAuthHandled) rxEvent;
            if (binanceAuthHandled.getIntent() != null) {
                WalletHomeBinancePayPresenter walletHomeBinancePayPresenter = this.this$0;
                Uri data = binanceAuthHandled.getIntent().getData();
                String queryParameter = data != null ? data.getQueryParameter("code") : null;
                if (queryParameter == null) {
                    queryParameter = "";
                }
                walletHomeBinancePayPresenter.getAuthTokensByCode(queryParameter);
            }
        } else if (rxEvent instanceof DomainRxEvents.BinanceExpiredSession) {
            WalletHomeBinancePayPresenter.renderScreenItems$default(this.this$0, false, null, 3, null);
        } else if (rxEvent instanceof DomainRxEvents.InterfaceSettingsChanged) {
            WalletHomeBinancePayPresenter walletHomeBinancePayPresenter2 = this.this$0;
            WalletHomeBinancePayPresenter.renderScreenItems$default(walletHomeBinancePayPresenter2, false, walletHomeBinancePayPresenter2.getBalances(), 1, null);
        } else if (rxEvent instanceof DomainRxEvents.BinanceTokensSettingsChanged) {
            this.this$0.loadScreenInfo();
        } else if (rxEvent instanceof AppRxEvents.HiddenBalanceSettingChanged) {
            ((WalletHomeBinancePayView) this.this$0.getViewState()).notifyDataSetChanged();
        }
    }
}
