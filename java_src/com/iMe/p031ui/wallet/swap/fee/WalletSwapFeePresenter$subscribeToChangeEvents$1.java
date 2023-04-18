package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapFeePresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$1 */
/* loaded from: classes4.dex */
public final class WalletSwapFeePresenter$subscribeToChangeEvents$1 extends Lambda implements Function1<SwapSlippage, ObservableSource<? extends Result<? extends CryptoSwapMetadata>>> {
    final /* synthetic */ WalletSwapFeePresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeePresenter$subscribeToChangeEvents$1(WalletSwapFeePresenter walletSwapFeePresenter) {
        super(1);
        this.this$0 = walletSwapFeePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<CryptoSwapMetadata>> invoke(SwapSlippage slippage) {
        SwapInteractor swapInteractor;
        SwapFeeScreenArgs swapFeeScreenArgs;
        SwapFeeScreenArgs swapFeeScreenArgs2;
        SwapFeeScreenArgs swapFeeScreenArgs3;
        SwapFeeScreenArgs swapFeeScreenArgs4;
        SwapFeeScreenArgs swapFeeScreenArgs5;
        SwapFeeScreenArgs swapFeeScreenArgs6;
        Intrinsics.checkNotNullParameter(slippage, "slippage");
        this.this$0.setSelectedSlip(slippage);
        swapInteractor = this.this$0.swapInteractor;
        swapFeeScreenArgs = this.this$0.args;
        TokenCode inputTokenCode = swapFeeScreenArgs.getMetadata().getInputTokenCode();
        swapFeeScreenArgs2 = this.this$0.args;
        TokenCode outputTokenCode = swapFeeScreenArgs2.getMetadata().getOutputTokenCode();
        swapFeeScreenArgs3 = this.this$0.args;
        String bigDecimal = swapFeeScreenArgs3.getMetadata().getAmountIn().toString();
        Intrinsics.checkNotNullExpressionValue(bigDecimal, "args.metadata.amountIn.toString()");
        TradeType tradeType = TradeType.EXACT_INPUT;
        float percent = slippage.getPercent();
        swapFeeScreenArgs4 = this.this$0.args;
        NetworkType networkType = swapFeeScreenArgs4.getNetworkType();
        swapFeeScreenArgs5 = this.this$0.args;
        NetworkType outputNetworkType = swapFeeScreenArgs5.getOutputNetworkType();
        swapFeeScreenArgs6 = this.this$0.args;
        Observable<Result<CryptoSwapMetadata>> quoteToSwap = swapInteractor.getQuoteToSwap(inputTokenCode, outputTokenCode, bigDecimal, tradeType, percent, networkType, outputNetworkType, swapFeeScreenArgs6.getProtocol());
        T viewState = this.this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        return RxExtKt.withLoadingDialog$default((Observable) quoteToSwap, (BaseView) viewState, false, 2, (Object) null);
    }
}
