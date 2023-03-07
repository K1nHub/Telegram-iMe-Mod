package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.smedialink.storage.data.mapper.crypto.WalletInformationMappingKt;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.data.network.model.request.crypto.wallet.LinkWalletAddressRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.UnlinkWalletAddressRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
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

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> linkWallet(String address, NetworkType networkType, String str) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<Object>> linkWallet = this.cryptoWalletApi.linkWallet(new LinkWalletAddressRequest(address, networkType, networkType.getBlockchainType().getBackendName(), str));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = linkWallet.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl$linkWallet$$inlined$mapSuccess$1
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

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> unlinkWallet(NetworkType networkType, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<ApiBaseResponse<Object>> unlinkWallet = this.cryptoWalletApi.unlinkWallet(new UnlinkWalletAddressRequest(networkType, blockchainType.getBackendName()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = unlinkWallet.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapSuccess$1
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
        final FirebaseFunctionsErrorHandler.CryptoErrorStatus cryptoErrorStatus = FirebaseFunctionsErrorHandler.CryptoErrorStatus.ETHER_WALLET_NOT_LINKED;
        Observable map2 = map.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    return result;
                }
                if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (!Intrinsics.areEqual(error.getError().getStatus(), IErrorStatus.this)) {
                        return Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
                    }
                    error.getError();
                    return Result.Companion.success(Boolean.TRUE);
                } else if (result instanceof Object) {
                    return result;
                } else {
                    return null;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "errorStatus: IErrorStatu…ult as? R\n        }\n    }");
        Observable<Result<Boolean>> onErrorReturn = map2.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<CryptoWalletInfo>> getLinkedCryptoWalletInfo() {
        Observable<ApiBaseResponse<CryptoWalletInfoResponse>> cryptoWalletInfo = this.cryptoWalletApi.getCryptoWalletInfo();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = cryptoWalletInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl$getLinkedCryptoWalletInfo$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(WalletInformationMappingKt.mapToDomain((CryptoWalletInfoResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<CryptoWalletInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.CryptoWalletRepository
    public Observable<Result<Boolean>> clearTokensData() {
        int collectionSizeOrDefault;
        WalletTokenBalanceDao walletTokenBalanceDao = this.walletTokenBalanceDao;
        long selectedAccountId = this.telegramGateway.getSelectedAccountId();
        List<TokenCode> cryptoCodes = TokenCode.Companion.getCryptoCodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(cryptoCodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenCode tokenCode : cryptoCodes) {
            arrayList.add(tokenCode.getName());
        }
        Completable andThen = walletTokenBalanceDao.rxDeleteByCodes(selectedAccountId, arrayList).andThen(Completable.fromCallable(new Callable() { // from class: com.smedialink.storage.data.repository.crypto.CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Unit m1361clearTokensData$lambda5;
                m1361clearTokensData$lambda5 = CryptoWalletRepositoryImpl.m1361clearTokensData$lambda5(CryptoWalletRepositoryImpl.this);
                return m1361clearTokensData$lambda5;
            }
        }));
        Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable andThen2 = andThen.andThen(just);
        Intrinsics.checkNotNullExpressionValue(andThen2, "walletTokenBalanceDao\n  …Success().toObservable())");
        Observable<Result<Boolean>> onErrorReturn = andThen2.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: clearTokensData$lambda-5  reason: not valid java name */
    public static final Unit m1361clearTokensData$lambda5(CryptoWalletRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cryptoPreferenceHelper.resetTokensSettings();
        return Unit.INSTANCE;
    }
}
