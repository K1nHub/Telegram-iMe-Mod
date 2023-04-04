package com.iMe.p032ui.wallet.swap.fee;

import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$feesOptions$2 */
/* loaded from: classes4.dex */
final class WalletSwapFeePresenter$feesOptions$2 extends Lambda implements Function0<TransactionSpeedLevel[]> {
    public static final WalletSwapFeePresenter$feesOptions$2 INSTANCE = new WalletSwapFeePresenter$feesOptions$2();

    WalletSwapFeePresenter$feesOptions$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final TransactionSpeedLevel[] invoke() {
        return TransactionSpeedLevel.values();
    }
}
