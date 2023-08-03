package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.mapper.crypto.NetworksMappingKt;
import com.iMe.storage.data.mapper.wallet.CustomTokensMappingKt;
import com.iMe.storage.data.mapper.wallet.DisplayedTokensMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenInfoMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenListsMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.mapper.wallet.TokensSearchResponseMappingKt;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.data.mapper.wallet.WalletTransactionMappingKt;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.wallet.CustomTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.DisplayedTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.iMe.storage.data.network.model.request.wallet.SetTokenVisibilityRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenCommonRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensBalanceRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensSearchRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.NetworksListResponse;
import com.iMe.storage.data.network.model.response.wallet.CustomTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenInfoResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenListsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokensSearchResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl implements WalletRepository {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final WalletTransferDataSourceFactory dataSourceFactory;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private HashMap<String, Long> lastUpdateBalanceTime;
    private final SchedulersProvider schedulersProvider;
    private final TelegramGateway telegramGateway;
    private final WalletApi walletApi;
    private final WalletTokensBalancesDao walletBalanceDao;

    static {
        new Companion(null);
    }

    public WalletRepositoryImpl(CryptoPreferenceHelper cryptoPreferenceHelper, WalletApi walletApi, WalletTransferDataSourceFactory dataSourceFactory, WalletTokensBalancesDao walletBalanceDao, SchedulersProvider schedulersProvider, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler, TelegramGateway telegramGateway) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        Intrinsics.checkNotNullParameter(walletBalanceDao, "walletBalanceDao");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.walletApi = walletApi;
        this.dataSourceFactory = dataSourceFactory;
        this.walletBalanceDao = walletBalanceDao;
        this.schedulersProvider = schedulersProvider;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
        this.telegramGateway = telegramGateway;
        List<Network> supportedNetworks = cryptoPreferenceHelper.getSupportedNetworks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedNetworks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Network network : supportedNetworks) {
            arrayList.add(network.getId());
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : arrayList) {
            String str = (String) obj;
            linkedHashMap.put(obj, 0L);
        }
        this.lastUpdateBalanceTime = new HashMap<>(linkedHashMap);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(Token token, String str, String str2, Network network) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(network, "network");
        Observable<Result<CryptoTransferMetadata>> transferMetadata = this.dataSourceFactory.getDataSource(network.getBlockchainType()).getTransferMetadata(token, str, str2);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CryptoTransferMetadata>> onErrorReturn = transferMetadata.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CryptoTransferMetadata>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getCryptoTransferMetadata$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoTransferMetadata> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Pair<TokenDetailed, Boolean>>> getTokenInfo(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<TokenInfoResponse>> tokenInfo = this.walletApi.getTokenInfo(new TokenCommonRequest(TokenMappingKt.mapToRequest(token)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokenInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TokenInfoResponse>, Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokenInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends TokenDetailed, ? extends Boolean>> invoke(ApiBaseResponse<TokenInfoResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TokenInfoMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<TokenDetailed, Boolean>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokenInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends TokenDetailed, ? extends Boolean>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CursoredData<TokenDetailed>>> getCustomTokens(String str) {
        Observable<ApiBaseResponse<CustomTokensResponse>> customTokens = this.walletApi.getCustomTokens(new CustomTokensRequest(null, str, null, 5, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = customTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CustomTokensResponse>, Result<? extends CursoredData<TokenDetailed>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getCustomTokens$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<TokenDetailed>> invoke(ApiBaseResponse<CustomTokensResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(CustomTokensMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CursoredData<TokenDetailed>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CursoredData<TokenDetailed>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getCustomTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<TokenDetailed>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens(String query, String networkId, String cursor) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Observable<ApiBaseResponse<TokensSearchResponse>> searchTokens = this.walletApi.searchTokens(new TokensSearchRequest(query, networkId, cursor, 0, 8, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = searchTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TokensSearchResponse>, Result<? extends CursoredData<FoundTokenWithFamily>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$searchTokens$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<FoundTokenWithFamily>> invoke(ApiBaseResponse<TokensSearchResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TokensSearchResponseMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<CursoredData<FoundTokenWithFamily>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends CursoredData<FoundTokenWithFamily>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$searchTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CursoredData<FoundTokenWithFamily>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<TokenListsData>> getTokenListsData(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<TokenListsResponse>> tokenListsData = this.walletApi.getTokenListsData(new TokenCommonRequest(TokenMappingKt.mapToRequest(token)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokenListsData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TokenListsResponse>, Result<? extends TokenListsData>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokenListsData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TokenListsData> invoke(ApiBaseResponse<TokenListsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TokenListsMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TokenListsData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TokenListsData>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokenListsData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TokenListsData> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> setTokenVisibility(Token token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<Object>> tokenVisibility = this.walletApi.setTokenVisibility(new SetTokenVisibilityRequest(TokenMappingKt.mapToRequest(token), z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokenVisibility.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$setTokenVisibility$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$setTokenVisibility$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> detachCustomToken(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<Object>> detachCustomToken = this.walletApi.detachCustomToken(new TokenCommonRequest(TokenMappingKt.mapToRequest(token)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = detachCustomToken.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$detachCustomToken$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$detachCustomToken$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Map<TokenDetailed, Boolean>>> getDisplayedTokens(final String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<DisplayedTokensResponse>> displayedTokens = this.walletApi.getDisplayedTokens(new DisplayedTokensRequest(networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = displayedTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<DisplayedTokensResponse>, Result<? extends Map<TokenDetailed, ? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Map<TokenDetailed, ? extends Boolean>> invoke(ApiBaseResponse<DisplayedTokensResponse> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                List<TokenDisplaySettings.Crypto> tokensSettingsFromDisplayResponse;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    tokensSettingsFromDisplayResponse = this.getTokensSettingsFromDisplayResponse(response, networkId);
                    cryptoPreferenceHelper.saveTokensSettings(tokensSettingsFromDisplayResponse, networkId);
                    return Result.Companion.success(DisplayedTokensMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Map<TokenDetailed, Boolean>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Map<TokenDetailed, ? extends Boolean>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getDisplayedTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Map<TokenDetailed, ? extends Boolean>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getTokensSettings$lambda$9(WalletRepositoryImpl this$0, String networkId) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(networkId, "$networkId");
        return this$0.cryptoPreferenceHelper.getTokensSettings(networkId);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenDisplaySettings.Crypto>>> getTokensSettings(final String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List tokensSettings$lambda$9;
                tokensSettings$lambda$9 = WalletRepositoryImpl.getTokensSettings$lambda$9(WalletRepositoryImpl.this, networkId);
                return tokensSettings$lambda$9;
            }
        });
        final WalletRepositoryImpl$getTokensSettings$2 walletRepositoryImpl$getTokensSettings$2 = new Function1<List<? extends TokenDisplaySettings.Crypto>, ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>> invoke(List<? extends TokenDisplaySettings.Crypto> list) {
                return invoke2((List<TokenDisplaySettings.Crypto>) list);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<List<TokenDisplaySettings.Crypto>>> invoke2(List<TokenDisplaySettings.Crypto> settings) {
                Intrinsics.checkNotNullParameter(settings, "settings");
                if (settings.isEmpty()) {
                    return Observable.empty();
                }
                Observable just = Observable.just(Result.Companion.success(settings));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource tokensSettings$lambda$10;
                tokensSettings$lambda$10 = WalletRepositoryImpl.getTokensSettings$lambda$10(Function1.this, obj);
                return tokensSettings$lambda$10;
            }
        });
        Observable<ApiBaseResponse<DisplayedTokensResponse>> displayedTokens = this.walletApi.getDisplayedTokens(new DisplayedTokensRequest(networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        ObservableSource flatMap2 = displayedTokens.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<DisplayedTokensResponse>, ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<? extends TokenDisplaySettings.Crypto>>> invoke(final ApiBaseResponse<DisplayedTokensResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                final WalletRepositoryImpl walletRepositoryImpl = this;
                final String str = networkId;
                Observable fromCallable2 = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$3$1
                    @Override // java.util.concurrent.Callable
                    public /* bridge */ /* synthetic */ Object call() {
                        call();
                        return Unit.INSTANCE;
                    }

                    @Override // java.util.concurrent.Callable
                    public final void call() {
                        CryptoPreferenceHelper cryptoPreferenceHelper;
                        List<TokenDisplaySettings.Crypto> tokensSettingsFromDisplayResponse;
                        cryptoPreferenceHelper = WalletRepositoryImpl.this.cryptoPreferenceHelper;
                        tokensSettingsFromDisplayResponse = WalletRepositoryImpl.this.getTokensSettingsFromDisplayResponse(response, str);
                        cryptoPreferenceHelper.saveTokensSettings(tokensSettingsFromDisplayResponse, str);
                    }
                });
                final WalletRepositoryImpl walletRepositoryImpl2 = this;
                final String str2 = networkId;
                final Function1<Unit, ObservableSource<? extends List<? extends TokenDisplaySettings.Crypto>>> function1 = new Function1<Unit, ObservableSource<? extends List<? extends TokenDisplaySettings.Crypto>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$3$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ObservableSource<? extends List<TokenDisplaySettings.Crypto>> invoke(Unit it) {
                        CryptoPreferenceHelper cryptoPreferenceHelper;
                        Intrinsics.checkNotNullParameter(it, "it");
                        cryptoPreferenceHelper = WalletRepositoryImpl.this.cryptoPreferenceHelper;
                        Observable just2 = Observable.just(cryptoPreferenceHelper.getTokensSettings(str2));
                        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                        return just2;
                    }
                };
                Observable flatMap3 = fromCallable2.flatMap(new Function(function1) { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$sam$io_reactivex_functions_Function$0
                    private final /* synthetic */ Function1 function;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        Intrinsics.checkNotNullParameter(function1, "function");
                        this.function = function1;
                    }

                    @Override // io.reactivex.functions.Function
                    public final /* synthetic */ Object apply(Object obj) {
                        return this.function.invoke(obj);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap3, "override fun getTokensSe…          }\n            )");
                return flatMap3.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<List<? extends TokenDisplaySettings.Crypto>, Result<? extends List<? extends TokenDisplaySettings.Crypto>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends List<? extends TokenDisplaySettings.Crypto>> invoke(List<? extends TokenDisplaySettings.Crypto> it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Result.Companion.success(it);
                    }
                }));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        Observable<Result<List<TokenDisplaySettings.Crypto>>> concat = Observable.concat(flatMap, flatMap2);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …          }\n            )");
        return concat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getTokensSettings$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, final String networkId) {
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<List<WalletTokenBalanceDb>> onErrorResumeNext = this.walletBalanceDao.getAllWalletBalances(this.telegramGateway.getSelectedAccountId(), networkId).toObservable().onErrorResumeNext(Observable.empty());
        final WalletRepositoryImpl$getWalletBalance$1 walletRepositoryImpl$getWalletBalance$1 = new Function1<List<? extends WalletTokenBalanceDb>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(List<? extends WalletTokenBalanceDb> list) {
                return invoke2((List<WalletTokenBalanceDb>) list);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<List<TokenBalance>>> invoke2(List<WalletTokenBalanceDb> balances) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(balances, "balances");
                if (balances.isEmpty()) {
                    return Observable.empty();
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletTokenBalanceDb walletTokenBalanceDb : balances) {
                    arrayList.add(WalletBalanceMappingKt.mapToDomain(walletTokenBalanceDb));
                }
                Observable just = Observable.just(Result.Companion.success(arrayList));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        ObservableSource flatMap2 = onErrorResumeNext.flatMap(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource walletBalance$lambda$13;
                walletBalance$lambda$13 = WalletRepositoryImpl.getWalletBalance$lambda$13(Function1.this, obj);
                return walletBalance$lambda$13;
            }
        });
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkId))) {
            Observable<ApiBaseResponse<WalletBalancesResponse>> walletTokensBalance = this.walletApi.getWalletTokensBalance(new TokensBalanceRequest(null, networkId, 1, null));
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            flatMap = walletTokensBalance.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<WalletBalancesResponse>, ObservableSource<? extends Result<? extends List<TokenBalance>>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ObservableSource<? extends Result<List<TokenBalance>>> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
                    HashMap hashMap;
                    WalletTokensBalancesDao walletTokensBalancesDao;
                    TelegramGateway telegramGateway;
                    WalletTokensBalancesDao walletTokensBalancesDao2;
                    int collectionSizeOrDefault;
                    SchedulersProvider schedulersProvider;
                    TelegramGateway telegramGateway2;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.isSuccess()) {
                        hashMap = this.lastUpdateBalanceTime;
                        hashMap.put(networkId, Long.valueOf(DateExtKt.now()));
                        List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
                        walletTokensBalancesDao = this.walletBalanceDao;
                        telegramGateway = this.telegramGateway;
                        Completable rxDeleteAllWalletBalances = walletTokensBalancesDao.rxDeleteAllWalletBalances(telegramGateway.getSelectedAccountId(), networkId);
                        walletTokensBalancesDao2 = this.walletBalanceDao;
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapToDomain, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (TokenBalance tokenBalance : mapToDomain) {
                            telegramGateway2 = this.telegramGateway;
                            arrayList.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway2.getSelectedAccountId()));
                        }
                        Completable andThen = rxDeleteAllWalletBalances.andThen(walletTokensBalancesDao2.rxInsert((List) arrayList));
                        schedulersProvider = this.schedulersProvider;
                        Completable subscribeOn = andThen.subscribeOn(schedulersProvider.mo717io());
                        Observable just = Observable.just(mapToDomain);
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        Observable andThen2 = subscribeOn.andThen(just);
                        Intrinsics.checkNotNullExpressionValue(andThen2, "walletBalanceDao\n       …etBalance.toObservable())");
                        return andThen2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<List<TokenBalance>, Result<? extends List<TokenBalance>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public final Result<? extends List<TokenBalance>> invoke(List<TokenBalance> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                return Result.Companion.success(it);
                            }
                        }));
                    }
                    Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(flatMap2, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TokenBalance>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TokenBalance>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getWalletBalance$lambda$13(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenBalance>>> getTokensBalance(List<Token> tokens, boolean z, String networkId) {
        int collectionSizeOrDefault;
        ObservableSource map;
        int collectionSizeOrDefault2;
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        if (z) {
            map = Observable.empty();
        } else {
            WalletTokensBalancesDao walletTokensBalancesDao = this.walletBalanceDao;
            long selectedAccountId = this.telegramGateway.getSelectedAccountId();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Token token : tokens) {
                arrayList.add(token.getAddress());
            }
            Observable<List<WalletTokenBalanceDb>> onErrorResumeNext = walletTokensBalancesDao.getTokensBalances(selectedAccountId, networkId, arrayList).toObservable().onErrorResumeNext(Observable.empty());
            final WalletRepositoryImpl$getTokensBalance$2 walletRepositoryImpl$getTokensBalance$2 = new Function1<List<? extends WalletTokenBalanceDb>, Result<? extends List<? extends TokenBalance>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Result<? extends List<? extends TokenBalance>> invoke(List<? extends WalletTokenBalanceDb> list) {
                    return invoke2((List<WalletTokenBalanceDb>) list);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Result<List<TokenBalance>> invoke2(List<WalletTokenBalanceDb> balances) {
                    int collectionSizeOrDefault3;
                    Intrinsics.checkNotNullParameter(balances, "balances");
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault3);
                    for (WalletTokenBalanceDb walletTokenBalanceDb : balances) {
                        arrayList2.add(WalletBalanceMappingKt.mapToDomain(walletTokenBalanceDb));
                    }
                    return Result.Companion.success(arrayList2);
                }
            };
            map = onErrorResumeNext.map(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result tokensBalance$lambda$17;
                    tokensBalance$lambda$17 = WalletRepositoryImpl.getTokensBalance$lambda$17(Function1.this, obj);
                    return tokensBalance$lambda$17;
                }
            });
        }
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkId))) {
            WalletApi walletApi = this.walletApi;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (Token token2 : tokens) {
                arrayList2.add(TokenMappingKt.mapToRequest(token2));
            }
            Observable<ApiBaseResponse<WalletBalancesResponse>> walletTokensBalance = walletApi.getWalletTokensBalance(new TokensBalanceRequest(arrayList2, networkId));
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            flatMap = walletTokensBalance.flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<WalletBalancesResponse>, ObservableSource<? extends Result<? extends List<TokenBalance>>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ObservableSource<? extends Result<List<TokenBalance>>> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
                    WalletTokensBalancesDao walletTokensBalancesDao2;
                    int collectionSizeOrDefault3;
                    SchedulersProvider schedulersProvider;
                    TelegramGateway telegramGateway;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccess()) {
                        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
                    walletTokensBalancesDao2 = this.walletBalanceDao;
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapToDomain, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                    for (TokenBalance tokenBalance : mapToDomain) {
                        telegramGateway = this.telegramGateway;
                        arrayList3.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway.getSelectedAccountId()));
                    }
                    Completable rxInsert = walletTokensBalancesDao2.rxInsert((List) arrayList3);
                    schedulersProvider = this.schedulersProvider;
                    Completable subscribeOn = rxInsert.subscribeOn(schedulersProvider.mo717io());
                    Observable just2 = Observable.just(mapToDomain);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    Observable andThen = subscribeOn.andThen(just2);
                    Intrinsics.checkNotNullExpressionValue(andThen, "walletBalanceDao\n       …etBalance.toObservable())");
                    return andThen.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<List<TokenBalance>, Result<? extends List<TokenBalance>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public final Result<? extends List<TokenBalance>> invoke(List<TokenBalance> it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return Result.Companion.success(it);
                        }
                    }));
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(map, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TokenBalance>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TokenBalance>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getTokensBalance$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, Token token, int i, String networkId) {
        TokenRequest mapToRequest;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<WalletTransactionsResponse>> walletTransactions = this.walletApi.getWalletTransactions(new GetWalletTransactionsRequest(str, i, networkId, (token == null || (mapToRequest = TokenMappingKt.mapToRequest(token)) == null) ? null : CollectionsKt__CollectionsJVMKt.listOf(mapToRequest)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = walletTransactions.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<WalletTransactionsResponse>, Result<? extends List<? extends Transaction>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Transaction>> invoke(ApiBaseResponse<WalletTransactionsResponse> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<WalletTransactionsResponse.WalletTransactionResponse> transactionsData = response.getPayload().getTransactionsData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse : transactionsData) {
                    arrayList.add(WalletTransactionMappingKt.mapToDomain(walletTransactionResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends Transaction>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletTransactionHistory$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Transaction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> sendTokens(TransferArgs args, Network network) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(network, "network");
        Observable<Result<Boolean>> transfer = this.dataSourceFactory.getDataSource(network.getBlockchainType()).transfer(args, network.getId());
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = transfer.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$sendTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Network>>> getSupportedNetworks() {
        Observable<ApiBaseResponse<NetworksListResponse>> supportedNetworks = this.walletApi.getSupportedNetworks();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = supportedNetworks.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<NetworksListResponse>, Result<? extends List<? extends Network>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getSupportedNetworks$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Network>> invoke(ApiBaseResponse<NetworksListResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(NetworksMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<Network>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends Network>>>() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getSupportedNetworks$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends Network>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final long getLastUpdateBalanceTimeByNetworkType(String str) {
        Long l = this.lastUpdateBalanceTime.get(str);
        if (l != null) {
            return l.longValue();
        }
        return TimeUnit.MINUTES.toMillis(2L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TokenDisplaySettings.Crypto> getTokensSettingsFromDisplayResponse(ApiBaseResponse<DisplayedTokensResponse> apiBaseResponse, String str) {
        int collectionSizeOrDefault;
        List sortedWith;
        int collectionSizeOrDefault2;
        Object obj;
        List<TokenDisplaySettings.Crypto> mapToTokensSettings = DisplayedTokensMappingKt.mapToTokensSettings(apiBaseResponse.getPayload());
        List<TokenDisplaySettings.Crypto> tokensSettings = this.cryptoPreferenceHelper.getTokensSettings(str);
        if (tokensSettings.isEmpty()) {
            return mapToTokensSettings;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapToTokensSettings, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenDisplaySettings.Crypto crypto : mapToTokensSettings) {
            Iterator<T> it = tokensSettings.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((TokenDisplaySettings.Crypto) obj).getTokenAddress(), crypto.getTokenAddress())) {
                    break;
                }
            }
            TokenDisplaySettings.Crypto crypto2 = (TokenDisplaySettings.Crypto) obj;
            arrayList.add(TokenDisplaySettings.Crypto.copy$default(crypto, crypto2 != null ? crypto2.getPosition() : Integer.MAX_VALUE, false, null, 6, null));
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettingsFromDisplayResponse$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((TokenDisplaySettings.Crypto) t).getPosition()), Integer.valueOf(((TokenDisplaySettings.Crypto) t2).getPosition()));
                return compareValues;
            }
        });
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        int i = 0;
        for (Object obj2 : sortedWith) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList2.add(TokenDisplaySettings.Crypto.copy$default((TokenDisplaySettings.Crypto) obj2, i, false, null, 6, null));
            i = i2;
        }
        return arrayList2;
    }

    /* compiled from: WalletRepositoryImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
