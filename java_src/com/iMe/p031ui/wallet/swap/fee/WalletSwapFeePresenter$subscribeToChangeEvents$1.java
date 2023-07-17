package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
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
        Intrinsics.checkNotNullParameter(slippage, "slippage");
        this.this$0.setSelectedSlip(slippage);
        swapInteractor = this.this$0.swapInteractor;
        swapFeeScreenArgs = this.this$0.args;
        SwapProtocol protocol = swapFeeScreenArgs.getProtocol();
        swapFeeScreenArgs2 = this.this$0.args;
        Token indexedToken = TokenExtKt.toIndexedToken(swapFeeScreenArgs2.getMetadata().getInputToken());
        swapFeeScreenArgs3 = this.this$0.args;
        Token indexedToken2 = TokenExtKt.toIndexedToken(swapFeeScreenArgs3.getMetadata().getOutputToken());
        swapFeeScreenArgs4 = this.this$0.args;
        String bigDecimal = swapFeeScreenArgs4.getMetadata().getAmountIn().toString();
        Intrinsics.checkNotNullExpressionValue(bigDecimal, "args.metadata.amountIn.toString()");
        Observable<Result<CryptoSwapMetadata>> quoteToSwap = swapInteractor.getQuoteToSwap(protocol, indexedToken, indexedToken2, bigDecimal, TradeType.EXACT_INPUT, slippage.getPercent());
        T viewState = this.this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        return RxExtKt.withLoadingDialog$default((Observable) quoteToSwap, (BaseView) viewState, false, 2, (Object) null);
    }
}
