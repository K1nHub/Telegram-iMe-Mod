package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$slipOptions$2 */
/* loaded from: classes4.dex */
final class WalletSwapFeePresenter$slipOptions$2 extends Lambda implements Function0<SwapSlippage[]> {
    public static final WalletSwapFeePresenter$slipOptions$2 INSTANCE = new WalletSwapFeePresenter$slipOptions$2();

    WalletSwapFeePresenter$slipOptions$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final SwapSlippage[] invoke() {
        return SwapSlippage.values();
    }
}
