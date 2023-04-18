package com.iMe.storage.data.repository.crypto.wallet_connect;

import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletConnectSessionDb;
import com.iMe.storage.data.mapper.wallet.WalletConnectSessionMappingKt;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet_connect.GetParamsForCryptoTransactionRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectRepositoryImpl implements WalletConnectRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TelegramGateway telegramGateway;
    private final WalletConnectApi walletConnectApi;
    private final WalletConnectDataSource walletConnectDataSource;
    private final WalletConnectSessionsDao walletConnectSessionsDao;

    public WalletConnectRepositoryImpl(ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, TelegramGateway telegramGateway, WalletConnectApi walletConnectApi, WalletConnectDataSource walletConnectDataSource, WalletConnectSessionsDao walletConnectSessionsDao) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(walletConnectApi, "walletConnectApi");
        Intrinsics.checkNotNullParameter(walletConnectDataSource, "walletConnectDataSource");
        Intrinsics.checkNotNullParameter(walletConnectSessionsDao, "walletConnectSessionsDao");
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.telegramGateway = telegramGateway;
        this.walletConnectApi = walletConnectApi;
        this.walletConnectDataSource = walletConnectDataSource;
        this.walletConnectSessionsDao = walletConnectSessionsDao;
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<WalletConnectProcessedTransaction>> getWalletConnectParamsForCryptoTransaction(WalletConnectTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Observable<R> map = this.walletConnectApi.getWalletConnectParamsForCryptoTransaction(new GetParamsForCryptoTransactionRequest(transaction.getFrom(), transaction.getTo(), transaction.getValue(), transaction.getData(), transaction.getGas(), transaction.getGasPrice(), transaction.getNonce(), transaction.getNetworkType().name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1825x1a4c414b(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<WalletConnectProcessedTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1824x1243a0b6(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<String>> sendWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.walletConnectDataSource.sendTransaction(args).onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1828xc1db6217(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<String>> signWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.walletConnectDataSource.sign(args);
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Flowable<Result<List<WCSessionStoreItem>>> getWalletConnectSavedSessions() {
        Flowable<List<WalletConnectSessionDb>> allSessions = this.walletConnectSessionsDao.getAllSessions(this.telegramGateway.getSelectedAccountId());
        final WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1 walletConnectRepositoryImpl$getWalletConnectSavedSessions$1 = WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1.INSTANCE;
        Flowable<R> map = allSessions.map(new Function() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result walletConnectSavedSessions$lambda$1;
                walletConnectSavedSessions$lambda$1 = WalletConnectRepositoryImpl.getWalletConnectSavedSessions$lambda$1(Function1.this, obj);
                return walletConnectSavedSessions$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "walletConnectSessionsDao…s()\n                    }");
        Flowable<Result<List<WCSessionStoreItem>>> handleError = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1826x8b365d34(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(handleError, "handleError");
        return handleError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getWalletConnectSavedSessions$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable insertWalletConnectSession(WCSessionStoreItem session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return this.walletConnectSessionsDao.rxInsert((WalletConnectSessionsDao) WalletConnectSessionMappingKt.mapToDb(session, this.telegramGateway.getSelectedAccountId()));
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable deleteAllWalletConnectSessions() {
        return this.walletConnectSessionsDao.rxDeleteAllSession(this.telegramGateway.getSelectedAccountId());
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable deleteWalletConnectSession(String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        return this.walletConnectSessionsDao.rxDeleteBySessionKey(this.telegramGateway.getSelectedAccountId(), sessionKey);
    }
}
