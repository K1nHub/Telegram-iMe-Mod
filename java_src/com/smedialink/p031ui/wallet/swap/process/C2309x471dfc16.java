package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2309x471dfc16 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2309x471dfc16(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1442invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1442invoke(Result<? extends String> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            WalletSwapProcessPresenter.loadApproveTokensInfo$default(this.this$0, false, false, 2, null);
            this.this$0.resetStateTo(SwapUiState.Idle.INSTANCE);
            ((WalletSwapProcessView) this.this$0.getViewState()).showSuccessSwapAlert();
        } else if (result instanceof Result.Error) {
            this.this$0.handleSwapErrors((Result.Error) result);
        }
    }
}
