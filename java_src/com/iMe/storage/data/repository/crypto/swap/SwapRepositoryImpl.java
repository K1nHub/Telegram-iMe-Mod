package com.iMe.storage.data.repository.crypto.swap;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.iMe.storage.data.mapper.crypto.SwapMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.swap.AvailableTokensToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.TokensApprovalInfoRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.TokensApprovalInfoResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
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
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapRepositoryImpl.kt */
/* loaded from: classes4.dex */
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

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<CursoredData<TokenDetailedWithRate>>> getAvailableTokensToSwap(SwapProtocol protocol, TransactionDirection direction, String networkId, String str, String str2, Integer num) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<AvailableSwapTokensResponse>> availableTokensToSwap = this.swapApi.getAvailableTokensToSwap(new AvailableTokensToSwapRequest(protocol.name(), networkId, str, direction.name(), str2, num));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = availableTokensToSwap.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<AvailableSwapTokensResponse>, Result<? extends CursoredData<TokenDetailedWithRate>>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<TokenDetailedWithRate>> invoke(ApiBaseResponse<AvailableSwapTokensResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SwapMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CursoredData<TokenDetailedWithRate>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CursoredData<TokenDetailedWithRate>>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<TokenDetailedWithRate>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<List<TokenApproveData>>> getApproveTokensInfo(SwapProtocol protocol, String networkId, List<Token> tokens) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        SwapApi swapApi = this.swapApi;
        String name = protocol.name();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Token token : tokens) {
            arrayList.add(TokenMappingKt.mapToRequest(token));
        }
        Observable<ApiBaseResponse<TokensApprovalInfoResponse>> tokensApprovalInfo = swapApi.getTokensApprovalInfo(new TokensApprovalInfoRequest(name, networkId, arrayList));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokensApprovalInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TokensApprovalInfoResponse>, Result<? extends List<? extends TokenApproveData>>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TokenApproveData>> invoke(ApiBaseResponse<TokensApprovalInfoResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SwapMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TokenApproveData>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TokenApproveData>>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TokenApproveData>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> approve = this.approveDataSourceFactory.getDataSource(args.getBlockchainType()).approve(args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = approve.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$approveToken$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> swap = this.swapDataSourceFactory.getDataSource(args.getSwapProtocol()).swap(args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = swap.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$swap$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(SwapProtocol protocol, Token inputToken, Token outputToken, String amount, TradeType tradeType, Float f) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tradeType, "tradeType");
        Observable<ApiBaseResponse<GetQuoteToSwapResponse>> quoteToSwap = this.swapApi.getQuoteToSwap(new GetQuoteToSwapRequest(protocol.name(), TokenMappingKt.mapToRequest(inputToken), TokenMappingKt.mapToRequest(outputToken), amount, tradeType.getValue(), f));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = quoteToSwap.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetQuoteToSwapResponse>, Result<? extends CryptoSwapMetadata>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoSwapMetadata> invoke(ApiBaseResponse<GetQuoteToSwapResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SwapMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoSwapMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoSwapMetadata>>() { // from class: com.iMe.storage.data.repository.crypto.swap.SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoSwapMetadata> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
