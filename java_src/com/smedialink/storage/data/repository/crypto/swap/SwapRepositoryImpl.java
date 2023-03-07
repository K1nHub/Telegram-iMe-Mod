package com.smedialink.storage.data.repository.crypto.swap;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.smedialink.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.smedialink.storage.data.mapper.crypto.SwapMappingKt;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.smedialink.storage.data.network.model.request.crypto.swap.NetworkAndProtocolSwapRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetApproveTokensInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
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
import io.reactivex.functions.Function;
import java.util.ArrayList;
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
        Observable<ApiBaseResponse<AvailableSwapTokensResponse>> availableTokensToSwap = this.swapApi.getAvailableTokensToSwap(new NetworkAndProtocolSwapRequest(protocol.name(), networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = availableTokensToSwap.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.swap.SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<TokenInfo> mapToDomain = SwapMappingKt.mapToDomain((AvailableSwapTokensResponse) response.getPayload());
                ArrayList arrayList = new ArrayList();
                for (T t : mapToDomain) {
                    if (!((TokenInfo) t).isUnknown()) {
                        arrayList.add(t);
                    }
                }
                return Result.Companion.success(arrayList);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<List<CryptoTokenApproveMetadata>>> getApproveTokensInfo(NetworkType networkType, SwapProtocol protocol) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Observable<ApiBaseResponse<GetApproveTokensInfoResponse>> approveTokensInfo = this.swapApi.getApproveTokensInfo(new NetworkAndProtocolSwapRequest(protocol.name(), networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = approveTokensInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.swap.SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SwapMappingKt.mapToDomain((GetApproveTokensInfoResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<CryptoTokenApproveMetadata>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.approveDataSourceFactory.getDataSource(args.getToken().getCode()).approve(args).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.swapDataSourceFactory.getDataSource(args.getSwapProtocol()).swap(args).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
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
        Observable<ApiBaseResponse<GetQuoteToSwapResponse>> quoteToSwap = this.swapApi.getQuoteToSwap(new GetQuoteToSwapRequest(inputToken.getName(), outputToken.getName(), amount, tradeType.getValue(), f, protocol.name(), inputNetworkType.name(), networkType == null ? null : networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = quoteToSwap.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.swap.SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SwapMappingKt.mapToDomain((GetQuoteToSwapResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoSwapMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
