package com.iMe.p031ui.wallet.swap.process;

import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2385x90737ee5 extends Lambda implements Function1<Result<? extends BinanceConvertQuote>, Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2385x90737ee5(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceConvertQuote> result) {
        m1537invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1537invoke(Result<? extends BinanceConvertQuote> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends BinanceConvertQuote> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.binanceConvertQuote = (BinanceConvertQuote) success.getData();
            this.this$0.renderState(new SwapUiState.Swap.Binance((BinanceConvertQuote) success.getData()));
        } else if (result instanceof Result.Error) {
            this.this$0.handleSwapErrors((Result.Error) result);
        }
    }
}
