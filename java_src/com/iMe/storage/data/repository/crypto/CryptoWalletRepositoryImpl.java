package com.iMe.storage.data.repository.crypto;

import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.LinkWalletsRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.LinkingWalletRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.UnlinkWalletAddressRequest;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.repository.crypto.CryptoWalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Completable;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
    private final WalletTokensBalancesDao walletTokensBalancesDao;

    public CryptoWalletRepositoryImpl(CryptoWalletApi cryptoWalletApi, TelegramGateway telegramGateway, FirebaseFunctionsErrorHandler firebaseErrorHandler, WalletTokensBalancesDao walletTokensBalancesDao, ApiErrorHandler errorHandler, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(walletTokensBalancesDao, "walletTokensBalancesDao");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoWalletApi = cryptoWalletApi;
        this.telegramGateway = telegramGateway;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.walletTokensBalancesDao = walletTokensBalancesDao;
        this.errorHandler = errorHandler;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> linkWallets(Map<BlockchainType, String> publicKeys) {
        Intrinsics.checkNotNullParameter(publicKeys, "publicKeys");
        CryptoWalletApi cryptoWalletApi = this.cryptoWalletApi;
        ArrayList arrayList = new ArrayList(publicKeys.size());
        for (Map.Entry<BlockchainType, String> entry : publicKeys.entrySet()) {
            arrayList.add(new LinkingWalletRequest(entry.getKey().getBackendName(), entry.getValue()));
        }
        Observable<R> map = cryptoWalletApi.linkWallet(new LinkWalletsRequest(arrayList)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$linkWallets$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$linkWallets$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> unlinkWallet(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<R> map = this.cryptoWalletApi.unlinkWallet(new UnlinkWalletAddressRequest(blockchainType.getBackendName())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable map2 = map.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1(FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_WALLET_NOT_LINKED)));
        Intrinsics.checkNotNullExpressionValue(map2, "errorStatus: IErrorStatu…ult as? R\n        }\n    }");
        Observable<Result<Boolean>> onErrorReturn = map2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new CryptoWalletRepositoryImpl$unlinkWallet$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<CryptoWalletsInfo>> getLinkedCryptoWalletInfo() {
        Observable<R> map = this.cryptoWalletApi.getCryptoWalletInfo().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1878x1fe7c804(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoWalletsInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1877xc018f11d(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> clearTokensData(final BlockchainType blockchainType) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        WalletTokensBalancesDao walletTokensBalancesDao = this.walletTokensBalancesDao;
        long selectedAccountId = this.telegramGateway.getSelectedAccountId();
        List<Network> networksByBlockchain = NetworksHelper.INSTANCE.getNetworksByBlockchain(blockchainType);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(networksByBlockchain, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Network network : networksByBlockchain) {
            arrayList.add(network.getId());
        }
        Completable andThen = walletTokensBalancesDao.rxDeleteByNetworks(selectedAccountId, arrayList).andThen(Completable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.crypto.CryptoWalletRepositoryImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit clearTokensData$lambda$6;
                clearTokensData$lambda$6 = CryptoWalletRepositoryImpl.clearTokensData$lambda$6(CryptoWalletRepositoryImpl.this, blockchainType);
                return clearTokensData$lambda$6;
            }
        }));
        Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable andThen2 = andThen.andThen(just);
        Intrinsics.checkNotNullExpressionValue(andThen2, "walletTokensBalancesDao\n…Success().toObservable())");
        Observable<Result<Boolean>> onErrorReturn = andThen2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1876x72fefc63(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit clearTokensData$lambda$6(CryptoWalletRepositoryImpl this$0, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.cryptoPreferenceHelper.resetTokensSettingsByBlockchainType(blockchainType);
        return Unit.INSTANCE;
    }

    @Override // com.iMe.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> clearAllTokensData() {
        Completable andThen = this.walletTokensBalancesDao.rxDeleteAllByUserId(this.telegramGateway.getSelectedAccountId()).andThen(Completable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.crypto.CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit clearAllTokensData$lambda$7;
                clearAllTokensData$lambda$7 = CryptoWalletRepositoryImpl.clearAllTokensData$lambda$7(CryptoWalletRepositoryImpl.this);
                return clearAllTokensData$lambda$7;
            }
        }));
        Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable andThen2 = andThen.andThen(just);
        Intrinsics.checkNotNullExpressionValue(andThen2, "walletTokensBalancesDao\n…Success().toObservable())");
        Observable<Result<Boolean>> onErrorReturn = andThen2.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1875x2ff8d0fc(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit clearAllTokensData$lambda$7(CryptoWalletRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cryptoPreferenceHelper.resetAllTokensSettings();
        return Unit.INSTANCE;
    }
}
