package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2307x71745cc7 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2307x71745cc7(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1441invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1441invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            this.this$0.resetStateTo(SwapUiState.Idle.INSTANCE);
            ((WalletSwapProcessView) this.this$0.getViewState()).showSuccessSwapAlert();
        } else if (result instanceof Result.Error) {
            this.this$0.handleSwapErrors((Result.Error) result);
        }
    }
}
