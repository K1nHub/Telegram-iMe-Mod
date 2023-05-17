package com.iMe.storage.domain.interactor.crypto.swap;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.repository.crypto.swap.SwapRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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

    public final Observable<Result<List<TokenInfo>>> getAvailableTokensToSwap(NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<Result<List<TokenInfo>>> subscribeOn = this.swapRepository.getAvailableTokensToSwap(networkType, protocol).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<CryptoTokenApproveMetadata>>> getApproveTokensInfo(NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<Result<List<CryptoTokenApproveMetadata>>> startWith = this.swapRepository.getApproveTokensInfo(networkType, protocol).subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable<Result<List<CryptoTokenApproveMetadata>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "swapRepository\n         …artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.swapRepository.approveToken(args).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.swapRepository.swap(args).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "swapRepository\n         …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(TokenCode inputToken, TokenCode outputToken, String amount, TradeType tradeType, float f, NetworkType inputNetworkType, NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tradeType, "tradeType");
        Intrinsics.checkNotNullParameter(inputNetworkType, "inputNetworkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<Result<CryptoSwapMetadata>> startWith = this.swapRepository.getQuoteToSwap(inputToken, outputToken, amount, tradeType, f, inputNetworkType, networkType, protocol).subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable<Result<CryptoSwapMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "swapRepository\n         …artWith(Result.loading())");
        return startWith;
    }
}
