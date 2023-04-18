package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$deadlineOptions$2 */
/* loaded from: classes4.dex */
final class WalletSwapFeePresenter$deadlineOptions$2 extends Lambda implements Function0<SwapDeadline[]> {
    public static final WalletSwapFeePresenter$deadlineOptions$2 INSTANCE = new WalletSwapFeePresenter$deadlineOptions$2();

    WalletSwapFeePresenter$deadlineOptions$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final SwapDeadline[] invoke() {
        return SwapDeadline.values();
    }
}
