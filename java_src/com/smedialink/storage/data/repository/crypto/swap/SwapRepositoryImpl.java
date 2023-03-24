package com.smedialink.storage.data.repository.crypto.swap;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.smedialink.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.smedialink.storage.data.network.model.request.crypto.swap.NetworkAndProtocolSwapRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.smedialink.storage.domain.model.crypto.swap.SwapArgs;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.repository.crypto.swap.SwapRepository;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class SwapRepositoryImpl implements SwapRepository {
    private final WalletApproveDataSourceFactory approveDataSourceFactory;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;
    private final WalletSwapDataSourceFactory swapDataSourceFactory;

    public SwapRepositoryImpl(SwapApi swapApi, WalletSwapDataSourceFactory swapDataSourceFactory, WalletApproveDataSourceFactory approveDataSourceFactory, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(swapDataSourceFactory, "swapDataSourceFactory");
        Intrinsics.checkNotNullParameter(approveDataSourceFactory, "approveDataSourceFactory");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.swapApi = swapApi;
        this.swapDataSourceFactory = swapDataSourceFactory;
        this.approveDataSourceFactory = approveDataSourceFactory;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<List<TokenInfo>>> getAvailableTokensToSwap(NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<R> map = this.swapApi.getAvailableTokensToSwap(new NetworkAndProtocolSwapRequest(protocol.name(), networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1777xd64aae2f(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1776xd612d052(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<List<CryptoTokenApproveMetadata>>> getApproveTokensInfo(NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<R> map = this.swapApi.getApproveTokensInfo(new NetworkAndProtocolSwapRequest(protocol.name(), networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<CryptoTokenApproveMetadata>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.approveDataSourceFactory.getDataSource(args.getToken().getCode()).approve(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$approveToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.swapDataSourceFactory.getDataSource(args.getSwapProtocol()).swap(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$swap$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(TokenCode inputToken, TokenCode outputToken, String amount, TradeType tradeType, float f, NetworkType inputNetworkType, NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tradeType, "tradeType");
        Intrinsics.checkNotNullParameter(inputNetworkType, "inputNetworkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<R> map = this.swapApi.getQuoteToSwap(new GetQuoteToSwapRequest(inputToken.getName(), outputToken.getName(), amount, tradeType.getValue(), f, protocol.name(), inputNetworkType.name(), networkType != null ? networkType.name() : null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoSwapMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
