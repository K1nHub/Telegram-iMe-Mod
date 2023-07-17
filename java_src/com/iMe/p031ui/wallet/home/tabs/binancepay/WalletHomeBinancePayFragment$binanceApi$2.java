package com.iMe.p031ui.wallet.home.tabs.binancepay;

import android.app.Activity;
import com.binance.android.opensdk.api.BinanceAPI;
import com.binance.android.opensdk.api.BinanceAPIFactory;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeBinancePayFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayFragment$binanceApi$2 */
/* loaded from: classes4.dex */
public final class WalletHomeBinancePayFragment$binanceApi$2 extends Lambda implements Function0<BinanceAPI> {
    final /* synthetic */ WalletHomeBinancePayFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeBinancePayFragment$binanceApi$2(WalletHomeBinancePayFragment walletHomeBinancePayFragment) {
        super(0);
        this.this$0 = walletHomeBinancePayFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BinanceAPI invoke() {
        Activity parentActivity = this.this$0.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return BinanceAPIFactory.createAPI(parentActivity);
    }
}
