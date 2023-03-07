package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.smedialink.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.smedialink.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.smedialink.storage.data.mapper.wallet.WalletTransactionMappingKt;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.wallet.ActivateWalletRequest;
import com.smedialink.storage.data.network.model.request.wallet.GetTokensBalanceRequest;
import com.smedialink.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
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
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl implements WalletRepository {
    private final WalletTransferDataSourceFactory dataSourceFactory;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private HashMap<NetworkType, Long> lastUpdateBalanceTime;
    private final SchedulersProvider schedulersProvider;
    private final TelegramGateway telegramGateway;
    private final WalletApi walletApi;
    private final WalletTokenBalanceDao walletBalanceDao;

    static {
        new Companion(null);
    }

    public WalletRepositoryImpl(WalletApi walletApi, WalletTransferDataSourceFactory dataSourceFactory, WalletTokenBalanceDao walletBalanceDao, SchedulersProvider schedulersProvider, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler, TelegramGateway telegramGateway) {
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        Intrinsics.checkNotNullParameter(walletBalanceDao, "walletBalanceDao");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.walletApi = walletApi;
        this.dataSourceFactory = dataSourceFactory;
        this.walletBalanceDao = walletBalanceDao;
        this.schedulersProvider = schedulersProvider;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
        this.telegramGateway = telegramGateway;
        NetworkType[] values = NetworkType.values();
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (NetworkType networkType : values) {
            linkedHashMap.put(networkType, 0L);
        }
        this.lastUpdateBalanceTime = new HashMap<>(linkedHashMap);
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<CryptoTransferMetadata>> onErrorReturn = this.dataSourceFactory.getDataSource(tokenCode).getTransferMetadata(tokenCode, str, str2, networkType).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> activateWallet() {
        Observable<ApiBaseResponse<Object>> activateWallet = this.walletApi.activateWallet(new ActivateWalletRequest(null, 1, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = activateWallet.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$activateWallet$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, final NetworkType networkType) {
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        ObservableSource map = this.walletBalanceDao.getAllWalletBalances(this.telegramGateway.getSelectedAccountId(), networkType.name()).toObservable().onErrorResumeNext(Observable.empty()).map(WalletRepositoryImpl$$ExternalSyntheticLambda1.INSTANCE);
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkType))) {
            Observable<ApiBaseResponse<WalletBalancesResponse>> walletTokensBalance = this.walletApi.getWalletTokensBalance(new GetTokensBalanceRequest(null, networkType.name(), networkType.getBlockchainType().getBackendName(), 1, null));
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            flatMap = walletTokensBalance.flatMap(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+Lcom/smedialink/storage/domain/model/Result<TR;>;>; */
                @Override // io.reactivex.functions.Function
                public final ObservableSource apply(ApiBaseResponse response) {
                    HashMap hashMap;
                    List<TokenBalance> sortedWith;
                    WalletTokenBalanceDao walletTokenBalanceDao;
                    TelegramGateway telegramGateway;
                    WalletTokenBalanceDao walletTokenBalanceDao2;
                    int collectionSizeOrDefault;
                    SchedulersProvider schedulersProvider;
                    TelegramGateway telegramGateway2;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccess()) {
                        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    hashMap = this.lastUpdateBalanceTime;
                    hashMap.put(networkType, Long.valueOf(DateExtKt.now()));
                    List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain((WalletBalancesResponse) response.getPayload());
                    ArrayList arrayList = new ArrayList();
                    for (T t : mapToDomain) {
                        if (((TokenBalance) t).getCode() != TokenCode.UNKNOWN) {
                            arrayList.add(t);
                        }
                    }
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$lambda-9$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t2, T t3) {
                            int compareValues;
                            TokenInfo.Companion companion = TokenInfo.Companion;
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t3).getCode()).getSortPosition()));
                            return compareValues;
                        }
                    });
                    walletTokenBalanceDao = this.walletBalanceDao;
                    telegramGateway = this.telegramGateway;
                    Completable rxDeleteAllWalletBalances = walletTokenBalanceDao.rxDeleteAllWalletBalances(telegramGateway.getSelectedAccountId(), networkType.name());
                    walletTokenBalanceDao2 = this.walletBalanceDao;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                    for (TokenBalance tokenBalance : sortedWith) {
                        telegramGateway2 = this.telegramGateway;
                        arrayList2.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway2.getSelectedAccountId()));
                    }
                    Completable andThen = rxDeleteAllWalletBalances.andThen(walletTokenBalanceDao2.rxInsert((List) arrayList2));
                    schedulersProvider = this.schedulersProvider;
                    Completable subscribeOn = andThen.subscribeOn(schedulersProvider.mo708io());
                    Observable just2 = Observable.just(sortedWith);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    Observable<T> andThen2 = subscribeOn.andThen(just2);
                    Intrinsics.checkNotNullExpressionValue(andThen2, "walletBalanceDao\n       …etBalance.toObservable())");
                    return andThen2.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1.1
                        @Override // io.reactivex.functions.Function
                        public final Result<R> apply(R it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return Result.Companion.success(it);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // io.reactivex.functions.Function
                        public /* bridge */ /* synthetic */ Object apply(Object obj) {
                            return apply((C17331<T, R>) obj);
                        }
                    });
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(map, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<TokenBalance>>> getTokensBalance(List<? extends TokenCode> codes, boolean z, NetworkType networkType) {
        int collectionSizeOrDefault;
        ObservableSource map;
        int collectionSizeOrDefault2;
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(codes, "codes");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (z) {
            map = Observable.empty();
        } else {
            WalletTokenBalanceDao walletTokenBalanceDao = this.walletBalanceDao;
            long selectedAccountId = this.telegramGateway.getSelectedAccountId();
            String name = networkType.name();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(codes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TokenCode tokenCode : codes) {
                arrayList.add(tokenCode.getName());
            }
            map = walletTokenBalanceDao.getTokensBalances(selectedAccountId, name, arrayList).toObservable().onErrorResumeNext(Observable.empty()).map(WalletRepositoryImpl$$ExternalSyntheticLambda0.INSTANCE);
        }
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkType))) {
            WalletApi walletApi = this.walletApi;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(codes, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (TokenCode tokenCode2 : codes) {
                arrayList2.add(tokenCode2.getName());
            }
            Observable<ApiBaseResponse<WalletBalancesResponse>> walletTokensBalance = walletApi.getWalletTokensBalance(new GetTokensBalanceRequest(arrayList2, networkType.name(), networkType.getBlockchainType().getBackendName()));
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            flatMap = walletTokensBalance.flatMap(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+Lcom/smedialink/storage/domain/model/Result<TR;>;>; */
                @Override // io.reactivex.functions.Function
                public final ObservableSource apply(ApiBaseResponse response) {
                    List<TokenBalance> sortedWith;
                    WalletTokenBalanceDao walletTokenBalanceDao2;
                    int collectionSizeOrDefault3;
                    SchedulersProvider schedulersProvider;
                    TelegramGateway telegramGateway;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccess()) {
                        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null));
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    }
                    List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain((WalletBalancesResponse) response.getPayload());
                    ArrayList arrayList3 = new ArrayList();
                    for (T t : mapToDomain) {
                        if (((TokenBalance) t).getCode() != TokenCode.UNKNOWN) {
                            arrayList3.add(t);
                        }
                    }
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$lambda-19$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t2, T t3) {
                            int compareValues;
                            TokenInfo.Companion companion = TokenInfo.Companion;
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t3).getCode()).getSortPosition()));
                            return compareValues;
                        }
                    });
                    walletTokenBalanceDao2 = this.walletBalanceDao;
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
                    ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault3);
                    for (TokenBalance tokenBalance : sortedWith) {
                        telegramGateway = this.telegramGateway;
                        arrayList4.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway.getSelectedAccountId()));
                    }
                    Completable rxInsert = walletTokenBalanceDao2.rxInsert((List) arrayList4);
                    schedulersProvider = this.schedulersProvider;
                    Completable subscribeOn = rxInsert.subscribeOn(schedulersProvider.mo708io());
                    Observable just2 = Observable.just(sortedWith);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    Observable<T> andThen = subscribeOn.andThen(just2);
                    Intrinsics.checkNotNullExpressionValue(andThen, "walletBalanceDao\n       …etBalance.toObservable())");
                    return andThen.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1.1
                        @Override // io.reactivex.functions.Function
                        public final Result<R> apply(R it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return Result.Companion.success(it);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // io.reactivex.functions.Function
                        public /* bridge */ /* synthetic */ Object apply(Object obj) {
                            return apply((C17301<T, R>) obj);
                        }
                    });
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(map, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, TokenCode tokenCode, int i, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<WalletTransactionsResponse>> walletTransactions = this.walletApi.getWalletTransactions(new GetWalletTransactionsRequest(str, i, networkType.name(), tokenCode == null ? null : tokenCode.getName()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = walletTransactions.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletTransactionHistory$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<WalletTransactionsResponse.WalletTransactionResponse> transactionsData = ((WalletTransactionsResponse) response.getPayload()).getTransactionsData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse : transactionsData) {
                    arrayList.add(WalletTransactionMappingKt.mapToDomain(walletTransactionResponse));
                }
                return Result.Companion.success(arrayList);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> sendTokens(TokenCode code, TransferArgs args) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<Boolean>> onErrorReturn = this.dataSourceFactory.getDataSource(code).transfer(args).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final long getLastUpdateBalanceTimeByNetworkType(NetworkType networkType) {
        return NumberExtKt.orZero(this.lastUpdateBalanceTime.get(networkType));
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getTokensBalance$lambda-14  reason: not valid java name */
    public static final Result m1381getTokensBalance$lambda14(List balances) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(balances, "balances");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = balances.iterator();
        while (it.hasNext()) {
            arrayList.add(WalletBalanceMappingKt.mapToDomain((WalletTokenBalanceDb) it.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((TokenBalance) obj).getCode() != TokenCode.UNKNOWN) {
                arrayList2.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$lambda-14$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenInfo.Companion companion = TokenInfo.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()));
                return compareValues;
            }
        });
        return Result.Companion.success(sortedWith);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletBalance$lambda-5  reason: not valid java name */
    public static final Result m1382getWalletBalance$lambda5(List balances) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(balances, "balances");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(balances, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = balances.iterator();
        while (it.hasNext()) {
            arrayList.add(WalletBalanceMappingKt.mapToDomain((WalletTokenBalanceDb) it.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((TokenBalance) obj).getCode() != TokenCode.UNKNOWN) {
                arrayList2.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$lambda-5$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenInfo.Companion companion = TokenInfo.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()));
                return compareValues;
            }
        });
        return Result.Companion.success(sortedWith);
    }
}
