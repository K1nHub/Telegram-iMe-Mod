package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.mapper.wallet.DisplayedTokensMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.wallet.ActivateWalletRequest;
import com.iMe.storage.data.network.model.request.wallet.CustomTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.DisplayedTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.iMe.storage.data.network.model.request.wallet.SetTokenVisibilityRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenCommonRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensBalanceRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensSearchRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.BlockchainType;
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
        Observable<Result<CryptoTransferMetadata>> onErrorReturn = this.dataSourceFactory.getDataSource(network.getBlockchainType()).getTransferMetadata(token, str, str2).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1937x8820c924(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> activateWallet() {
        Observable<R> map = this.walletApi.activateWallet(new ActivateWalletRequest(null, 1, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$activateWallet$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$activateWallet$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Pair<TokenDetailed, Boolean>>> getTokenInfo(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.walletApi.getTokenInfo(new TokenCommonRequest(TokenMappingKt.mapToRequest(token))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokenInfo$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Pair<TokenDetailed, Boolean>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokenInfo$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CursoredData<TokenDetailed>>> getCustomTokens(String str) {
        Observable<R> map = this.walletApi.getCustomTokens(new CustomTokensRequest(null, str, null, 5, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getCustomTokens$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CursoredData<TokenDetailed>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getCustomTokens$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens(String query, String networkId, String cursor) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Observable<R> map = this.walletApi.searchTokens(new TokensSearchRequest(query, networkId, cursor, 0, 8, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$searchTokens$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CursoredData<FoundTokenWithFamily>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$searchTokens$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<TokenListsData>> getTokenListsData(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.walletApi.getTokenListsData(new TokenCommonRequest(TokenMappingKt.mapToRequest(token))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokenListsData$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TokenListsData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokenListsData$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> setTokenVisibility(Token token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.walletApi.setTokenVisibility(new SetTokenVisibilityRequest(TokenMappingKt.mapToRequest(token), z)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$setTokenVisibility$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$setTokenVisibility$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> detachCustomToken(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.walletApi.detachCustomToken(new TokenCommonRequest(TokenMappingKt.mapToRequest(token))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$detachCustomToken$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$detachCustomToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Map<TokenDetailed, Boolean>>> getDisplayedTokens(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.walletApi.getDisplayedTokens(new DisplayedTokensRequest(networkId)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1(this.firebaseErrorHandler, this, networkId)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Map<TokenDetailed, Boolean>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getDisplayedTokens$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getTokensSettings$lambda$10(WalletRepositoryImpl this$0, String networkId) {
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
                List tokensSettings$lambda$10;
                tokensSettings$lambda$10 = WalletRepositoryImpl.getTokensSettings$lambda$10(WalletRepositoryImpl.this, networkId);
                return tokensSettings$lambda$10;
            }
        });
        final WalletRepositoryImpl$getTokensSettings$2 walletRepositoryImpl$getTokensSettings$2 = WalletRepositoryImpl$getTokensSettings$2.INSTANCE;
        Observable flatMap = fromCallable.flatMap(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource tokensSettings$lambda$11;
                tokensSettings$lambda$11 = WalletRepositoryImpl.getTokensSettings$lambda$11(Function1.this, obj);
                return tokensSettings$lambda$11;
            }
        });
        ObservableSource flatMap2 = this.walletApi.getDisplayedTokens(new DisplayedTokensRequest(networkId)).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this, networkId)));
        Intrinsics.checkNotNullExpressionValue(flatMap2, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        Observable<Result<List<TokenDisplaySettings.Crypto>>> concat = Observable.concat(flatMap, flatMap2);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …          }\n            )");
        return concat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getTokensSettings$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, String networkId) {
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<List<WalletTokenBalanceDb>> onErrorResumeNext = this.walletBalanceDao.getAllWalletBalances(this.telegramGateway.getSelectedAccountId(), networkId).toObservable().onErrorResumeNext(Observable.empty());
        final WalletRepositoryImpl$getWalletBalance$1 walletRepositoryImpl$getWalletBalance$1 = WalletRepositoryImpl$getWalletBalance$1.INSTANCE;
        ObservableSource flatMap2 = onErrorResumeNext.flatMap(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource walletBalance$lambda$14;
                walletBalance$lambda$14 = WalletRepositoryImpl.getWalletBalance$lambda$14(Function1.this, obj);
                return walletBalance$lambda$14;
            }
        });
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkId))) {
            flatMap = this.walletApi.getWalletTokensBalance(new TokensBalanceRequest(null, networkId, 1, null)).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this, networkId)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(flatMap2, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getWalletBalance$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getWalletBalance$lambda$14(Function1 tmp0, Object obj) {
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
            final WalletRepositoryImpl$getTokensBalance$2 walletRepositoryImpl$getTokensBalance$2 = WalletRepositoryImpl$getTokensBalance$2.INSTANCE;
            map = onErrorResumeNext.map(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result tokensBalance$lambda$18;
                    tokensBalance$lambda$18 = WalletRepositoryImpl.getTokensBalance$lambda$18(Function1.this, obj);
                    return tokensBalance$lambda$18;
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
            flatMap = walletApi.getWalletTokensBalance(new TokensBalanceRequest(arrayList2, networkId)).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(map, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokensBalance$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getTokensBalance$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, Token token, int i, String networkId) {
        TokenRequest mapToRequest;
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.walletApi.getWalletTransactions(new GetWalletTransactionsRequest(str, i, networkId, (token == null || (mapToRequest = TokenMappingKt.mapToRequest(token)) == null) ? null : CollectionsKt__CollectionsJVMKt.listOf(mapToRequest))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1943x5cdbb371(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1942x21a27350(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> sendTokens(TransferArgs args, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> onErrorReturn = this.dataSourceFactory.getDataSource(blockchainType).transfer(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$sendTokens$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Network>>> getSupportedNetworks() {
        Observable<R> map = this.walletApi.getSupportedNetworks().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getSupportedNetworks$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Network>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getSupportedNetworks$$inlined$handleError$1(this.errorHandler)));
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
