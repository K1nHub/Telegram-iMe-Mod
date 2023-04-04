package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.locale.p028db.dao.minor.wallet.WalletTokenBalanceDao;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.LinkWalletAddressRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.UnlinkWalletAddressRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Completable;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletRepositoryImpl implements CryptoWalletRepository {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletApi cryptoWalletApi;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TelegramGateway telegramGateway;
    private final WalletTokenBalanceDao walletTokenBalanceDao;

    public CryptoWalletRepositoryImpl(CryptoWalletApi cryptoWalletApi, TelegramGateway telegramGateway, FirebaseFunctionsErrorHandler firebaseErrorHandler, WalletTokenBalanceDao walletTokenBalanceDao, ApiErrorHandler errorHandler, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(walletTokenBalanceDao, "walletTokenBalanceDao");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoWalletApi = cryptoWalletApi;
        this.telegramGateway = telegramGateway;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.walletTokenBalanceDao = walletTokenBalanceDao;
        this.errorHandler = errorHandler;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> linkWallet(String address, NetworkType networkType, String str) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.cryptoWalletApi.linkWallet(new LinkWalletAddressRequest(address, networkType, str)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$linkWallet$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$linkWallet$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> unlinkWallet(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.cryptoWalletApi.unlinkWallet(new UnlinkWalletAddressRequest(networkType)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable map2 = map.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1(FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_WALLET_NOT_LINKED)));
        Intrinsics.checkNotNullExpressionValue(map2, "errorStatus: IErrorStatu…ult as? R\n        }\n    }");
        Observable<Result<Boolean>> onErrorReturn = map2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<CryptoWalletInfo>> getLinkedCryptoWalletInfo() {
        Observable<R> map = this.cryptoWalletApi.getCryptoWalletInfo().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1800x1fe7c804(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoWalletInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1799xc018f11d(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> clearTokensData(final BlockchainType blockchainType) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        WalletTokenBalanceDao walletTokenBalanceDao = this.walletTokenBalanceDao;
        long selectedAccountId = this.telegramGateway.getSelectedAccountId();
        List<TokenCode> cryptoCodes = TokenCode.Companion.getCryptoCodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(cryptoCodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenCode tokenCode : cryptoCodes) {
            arrayList.add(tokenCode.getName());
        }
        Completable andThen = walletTokenBalanceDao.rxDeleteByCodes(selectedAccountId, arrayList).andThen(Completable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.crypto.CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit clearTokensData$lambda$5;
                clearTokensData$lambda$5 = CryptoWalletRepositoryImpl.clearTokensData$lambda$5(CryptoWalletRepositoryImpl.this, blockchainType);
                return clearTokensData$lambda$5;
            }
        }));
        Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable andThen2 = andThen.andThen(just);
        Intrinsics.checkNotNullExpressionValue(andThen2, "walletTokenBalanceDao\n  …Success().toObservable())");
        Observable<Result<Boolean>> onErrorReturn = andThen2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1798x72fefc63(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit clearTokensData$lambda$5(CryptoWalletRepositoryImpl this$0, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.cryptoPreferenceHelper.resetTokensSettingsByBlockchainType(blockchainType);
        return Unit.INSTANCE;
    }
}
