package com.iMe.storage.data.repository.crypto.swap;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSourceFactory;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSourceFactory;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.swap.AvailableTokensToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.TokensApprovalInfoRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.repository.crypto.swap.SwapRepository;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
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

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<CursoredData<TokenDetailed>>> getAvailableTokensToSwap(SwapProtocol protocol, TransactionDirection direction, String networkId, String str, String str2, Integer num) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.swapApi.getAvailableTokensToSwap(new AvailableTokensToSwapRequest(protocol.name(), networkId, str, direction.name(), str2, num)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1911xd64aae2f(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CursoredData<TokenDetailed>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1910xd612d052(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<List<CryptoTokenApproveMetadata>>> getApproveTokensInfo(SwapProtocol protocol, String networkId, List<Token> tokens) {
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
        Observable<R> map = swapApi.getTokensApprovalInfo(new TokensApprovalInfoRequest(name, networkId, arrayList)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<CryptoTokenApproveMetadata>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> approveToken(ApproveArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.approveDataSourceFactory.getDataSource(args.getBlockchainType()).approve(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$approveToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<String>> swap(SwapArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.swapDataSourceFactory.getDataSource(args.getSwapProtocol()).swap(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$swap$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.swap.SwapRepository
    public Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(SwapProtocol protocol, Token inputToken, Token outputToken, String amount, TradeType tradeType, float f) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tradeType, "tradeType");
        Observable<R> map = this.swapApi.getQuoteToSwap(new GetQuoteToSwapRequest(protocol.name(), TokenMappingKt.mapToRequest(inputToken), TokenMappingKt.mapToRequest(outputToken), amount, tradeType.getValue(), f)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoSwapMetadata>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
