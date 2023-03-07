package com.smedialink.storage.data.repository.crypto.wallet_connect;

import com.smedialink.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.smedialink.storage.data.locale.p027db.model.wallet.WalletConnectSessionDb;
import com.smedialink.storage.data.mapper.crypto.CryptoWalletMappingKt;
import com.smedialink.storage.data.mapper.wallet.WalletConnectSessionMappingKt;
import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.wallet_connect.GetParamsForCryptoTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
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

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<WalletConnectProcessedTransaction>> getWalletConnectParamsForCryptoTransaction(WalletConnectTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Observable<ApiBaseResponse<ParamsForCryptoTransactionResponse>> walletConnectParamsForCryptoTransaction = this.walletConnectApi.getWalletConnectParamsForCryptoTransaction(new GetParamsForCryptoTransactionRequest(transaction.getFrom(), transaction.getTo(), transaction.getValue(), transaction.getData(), transaction.getGas(), transaction.getGasPrice(), transaction.getNonce(), transaction.getNetworkType().name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = walletConnectParamsForCryptoTransaction.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoWalletMappingKt.mapToDomain((ParamsForCryptoTransactionResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<WalletConnectProcessedTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<String>> sendWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> onErrorReturn = this.walletConnectDataSource.sendTransaction(args).onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<String>> signWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.walletConnectDataSource.sign(args);
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Flowable<Result<List<WCSessionStoreItem>>> getWalletConnectSavedSessions() {
        Flowable<R> map = this.walletConnectSessionsDao.getAllSessions(this.telegramGateway.getSelectedAccountId()).map(WalletConnectRepositoryImpl$$ExternalSyntheticLambda0.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(map, "walletConnectSessionsDao…s()\n                    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Flowable<Result<List<WCSessionStoreItem>>> handleError = map.onErrorReturn(new Function() { // from class: com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$3
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, apiErrorHandler.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(handleError, "handleError");
        return handleError;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable insertWalletConnectSession(WCSessionStoreItem session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return this.walletConnectSessionsDao.rxInsert((WalletConnectSessionsDao) WalletConnectSessionMappingKt.mapToDb(session, this.telegramGateway.getSelectedAccountId()));
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable deleteAllWalletConnectSessions() {
        return this.walletConnectSessionsDao.rxDeleteAllSession(this.telegramGateway.getSelectedAccountId());
    }

    @Override // com.smedialink.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Completable deleteWalletConnectSession(String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        return this.walletConnectSessionsDao.rxDeleteBySessionKey(this.telegramGateway.getSelectedAccountId(), sessionKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletConnectSavedSessions$lambda-3  reason: not valid java name */
    public static final Result m1365getWalletConnectSavedSessions$lambda3(List sessions) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sessions, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = sessions.iterator();
        while (it.hasNext()) {
            arrayList.add(WalletConnectSessionMappingKt.mapToDomain((WalletConnectSessionDb) it.next()));
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$lambda-3$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((WCSessionStoreItem) t).getDate(), ((WCSessionStoreItem) t2).getDate());
                return compareValues;
            }
        });
        return Result.Companion.success(sortedWith);
    }
}
