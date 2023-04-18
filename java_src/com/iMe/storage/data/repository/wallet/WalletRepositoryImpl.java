package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSourceFactory;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.wallet.ActivateWalletRequest;
import com.iMe.storage.data.network.model.request.wallet.GetTokensBalanceRequest;
import com.iMe.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
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

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<CryptoTransferMetadata>> onErrorReturn = this.dataSourceFactory.getDataSource(TuplesKt.m80to(tokenCode, networkType.getBlockchainType())).getTransferMetadata(tokenCode, str, str2, networkType).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1854x8820c924(this.errorHandler)));
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
    public Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, NetworkType networkType) {
        ObservableSource flatMap;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<List<WalletTokenBalanceDb>> onErrorResumeNext = this.walletBalanceDao.getAllWalletBalances(this.telegramGateway.getSelectedAccountId(), networkType.name()).toObservable().onErrorResumeNext(Observable.empty());
        final WalletRepositoryImpl$getWalletBalance$1 walletRepositoryImpl$getWalletBalance$1 = WalletRepositoryImpl$getWalletBalance$1.INSTANCE;
        ObservableSource map = onErrorResumeNext.map(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result walletBalance$lambda$2;
                walletBalance$lambda$2 = WalletRepositoryImpl.getWalletBalance$lambda$2(Function1.this, obj);
                return walletBalance$lambda$2;
            }
        });
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkType))) {
            flatMap = this.walletApi.getWalletTokensBalance(new GetTokensBalanceRequest(null, networkType.name(), 1, null)).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this, networkType)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "errorHandler: FirebaseFu…R>().toObservable()\n    }");
        } else {
            flatMap = Observable.empty();
        }
        Observable concat = Observable.concat(map, flatMap);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ble.empty()\n            )");
        Observable<Result<List<TokenBalance>>> onErrorReturn = concat.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getWalletBalance$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getWalletBalance$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
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
            Observable<List<WalletTokenBalanceDb>> onErrorResumeNext = walletTokenBalanceDao.getTokensBalances(selectedAccountId, name, arrayList).toObservable().onErrorResumeNext(Observable.empty());
            final WalletRepositoryImpl$getTokensBalance$2 walletRepositoryImpl$getTokensBalance$2 = WalletRepositoryImpl$getTokensBalance$2.INSTANCE;
            map = onErrorResumeNext.map(new Function() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    Result tokensBalance$lambda$8;
                    tokensBalance$lambda$8 = WalletRepositoryImpl.getTokensBalance$lambda$8(Function1.this, obj);
                    return tokensBalance$lambda$8;
                }
            });
        }
        if (z || DateExtKt.isMinutesAgo(2, getLastUpdateBalanceTimeByNetworkType(networkType))) {
            WalletApi walletApi = this.walletApi;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(codes, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (TokenCode tokenCode2 : codes) {
                arrayList2.add(tokenCode2.getName());
            }
            flatMap = walletApi.getWalletTokensBalance(new GetTokensBalanceRequest(arrayList2, networkType.name())).flatMap(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1(this.firebaseErrorHandler, this)));
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
    public static final Result getTokensBalance$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, TokenCode tokenCode, int i, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.walletApi.getWalletTransactions(new GetWalletTransactionsRequest(str, i, networkType.name(), tokenCode != null ? tokenCode.getName() : null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1862x5cdbb371(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<Transaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1861x21a27350(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletRepository
    public Observable<Result<Boolean>> sendTokens(TokenCode code, TransferArgs args, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> onErrorReturn = this.dataSourceFactory.getDataSource(TuplesKt.m80to(code, blockchainType)).transfer(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletRepositoryImpl$sendTokens$$inlined$handleError$1(this.errorHandler)));
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
}
