package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay;

import android.app.Activity;
import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.binancepay.api.BinancePayFactory;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeBinancePayFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayFragment$binancePayApi$2 */
/* loaded from: classes3.dex */
public final class WalletHomeBinancePayFragment$binancePayApi$2 extends Lambda implements Function0<BinancePay> {
    final /* synthetic */ WalletHomeBinancePayFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeBinancePayFragment$binancePayApi$2(WalletHomeBinancePayFragment walletHomeBinancePayFragment) {
        super(0);
        this.this$0 = walletHomeBinancePayFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BinancePay invoke() {
        BinancePayFactory.Companion companion = BinancePayFactory.Companion;
        Activity parentActivity = this.this$0.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return companion.getBinancePay(parentActivity);
    }
}
