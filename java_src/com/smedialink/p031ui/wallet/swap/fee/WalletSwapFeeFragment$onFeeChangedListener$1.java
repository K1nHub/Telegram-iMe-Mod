package com.smedialink.p031ui.wallet.swap.fee;

import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeeFragment$onFeeChangedListener$1 */
/* loaded from: classes3.dex */
final class WalletSwapFeeFragment$onFeeChangedListener$1 extends Lambda implements Function1<SwapFeeScreenArgs, Unit> {
    public static final WalletSwapFeeFragment$onFeeChangedListener$1 INSTANCE = new WalletSwapFeeFragment$onFeeChangedListener$1();

    WalletSwapFeeFragment$onFeeChangedListener$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(SwapFeeScreenArgs noName_0) {
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SwapFeeScreenArgs swapFeeScreenArgs) {
        invoke2(swapFeeScreenArgs);
        return Unit.INSTANCE;
    }
}
