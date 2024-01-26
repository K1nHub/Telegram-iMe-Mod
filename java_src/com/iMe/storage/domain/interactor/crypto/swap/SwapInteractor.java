package com.iMe.storage.domain.interactor.crypto.swap;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.crypto.swap.TokenApproveData;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailedWithRate;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.repository.crypto.swap.SwapRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapInteractor.kt */
/* loaded from: classes3.dex */
public final class SwapInteractor {
    private final SchedulersProvider schedulersProvider;
    private final SwapRepository swapRepository;

    public SwapInteractor(SwapRepository swapRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(swapRepository, "swapRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.swapRepository = swapRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<CursoredData<TokenDetailedWithRate>>> getAvailableTokensToSwap(SwapProtocol protocol, TransactionDirection direction, String networkId, String str, String str2, Integer num) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<CursoredData<TokenDetailedWithRate>>> subscribeOn = this.swapRepository.getAvailableTokensToSwap(protocol, direction, networkId, str, str2, num).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TokenApproveData>>> getApproveTokensInfo(String networkId, SwapProtocol protocol, List<Token> tokens) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Observable<Result<List<TokenApproveData>>> startWith = this.swapRepository.getApproveTokensInfo(protocol, networkId, tokens).subscribeOn(this.schedulersProvider.mo1014io()).startWith((Observable<Result<List<TokenApproveData>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "swapRepository\n         …artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.swapRepository.approveToken(args).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.swapRepository.swap(args).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(SwapProtocol protocol, Token inputToken, Token outputToken, String amount, TradeType tradeType, Float f) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tradeType, "tradeType");
        Observable<Result<CryptoSwapMetadata>> startWith = this.swapRepository.getQuoteToSwap(protocol, inputToken, outputToken, amount, tradeType, f).subscribeOn(this.schedulersProvider.mo1014io()).startWith((Observable<Result<CryptoSwapMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "swapRepository\n         …artWith(Result.loading())");
        return startWith;
    }
}
