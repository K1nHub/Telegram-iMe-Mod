package com.iMe.p031ui.wallet.swap.process;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2392xdcc31e38 extends Lambda implements Function1<Result<? extends CryptoSwapMetadata>, Unit> {
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2392xdcc31e38(WalletSwapProcessPresenter walletSwapProcessPresenter) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoSwapMetadata> result) {
        m1540invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1540invoke(Result<? extends CryptoSwapMetadata> it) {
        FeeView.ChooseFeeType swapFeeType;
        CryptoSwapMetadata cryptoSwapMetadata;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CryptoSwapMetadata> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.swapMetadata = (CryptoSwapMetadata) success.getData();
            this.this$0.selectedSwapFee = new GasPriceItem(TransactionSpeedLevel.MEDIUM, TokenInfo.Companion.map(((CryptoSwapMetadata) success.getData()).getFeeTokenCode()), ((CryptoSwapMetadata) success.getData()).getTransactionParams().getMedium());
            WalletSwapProcessPresenter walletSwapProcessPresenter = this.this$0;
            swapFeeType = walletSwapProcessPresenter.getSwapFeeType();
            cryptoSwapMetadata = this.this$0.swapMetadata;
            Intrinsics.checkNotNull(cryptoSwapMetadata);
            walletSwapProcessPresenter.renderState(new SwapUiState.Swap.Crypto(swapFeeType, cryptoSwapMetadata));
        } else if (result instanceof Result.Error) {
            this.this$0.handleSwapErrors((Result.Error) result);
        }
    }
}
