package com.iMe.storage.data.repository.crypto.wallet_connect;

import com.iMe.storage.data.datasource.wallet_connect.WalletConnectDataSource;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletConnectSessionDb;
import com.iMe.storage.data.mapper.crypto.CryptoWalletMappingKt;
import com.iMe.storage.data.mapper.wallet.WalletConnectSessionMappingKt;
import com.iMe.storage.data.network.api.own.WalletConnectApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet_connect.GetParamsForCryptoTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
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
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectRepositoryImpl.kt */
/* loaded from: classes4.dex */
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
        Observable<ApiBaseResponse<ParamsForCryptoTransactionResponse>> walletConnectParamsForCryptoTransaction = this.walletConnectApi.getWalletConnectParamsForCryptoTransaction(new GetParamsForCryptoTransactionRequest(transaction.getFrom(), transaction.getTo(), transaction.getValue(), transaction.getData(), transaction.getGas(), transaction.getGasPrice(), transaction.getNonce(), transaction.getNetworkId()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = walletConnectParamsForCryptoTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<ParamsForCryptoTransactionResponse>, Result<? extends WalletConnectProcessedTransaction>>() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<WalletConnectProcessedTransaction> invoke(ApiBaseResponse<ParamsForCryptoTransactionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(CryptoWalletMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<WalletConnectProcessedTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends WalletConnectProcessedTransaction>>() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<WalletConnectProcessedTransaction> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository
    public Observable<Result<String>> sendWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> sendTransaction = this.walletConnectDataSource.sendTransaction(args);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = sendTransaction.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$sendWalletConnectCryptoTransaction$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
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
        final WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1 walletConnectRepositoryImpl$getWalletConnectSavedSessions$1 = new Function1<List<? extends WalletConnectSessionDb>, Result<? extends List<? extends WCSessionStoreItem>>>() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Result<? extends List<? extends WCSessionStoreItem>> invoke(List<? extends WalletConnectSessionDb> list) {
                return invoke2((List<WalletConnectSessionDb>) list);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Result<List<WCSessionStoreItem>> invoke2(List<WalletConnectSessionDb> sessions) {
                int collectionSizeOrDefault;
                List sortedWith;
                Intrinsics.checkNotNullParameter(sessions, "sessions");
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sessions, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (WalletConnectSessionDb walletConnectSessionDb : sessions) {
                    arrayList.add(WalletConnectSessionMappingKt.mapToDomain(walletConnectSessionDb));
                }
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1$invoke$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(((WCSessionStoreItem) t).getDate(), ((WCSessionStoreItem) t2).getDate());
                        return compareValues;
                    }
                });
                return Result.Companion.success(sortedWith);
            }
        };
        Flowable<R> map = allSessions.map(new Function() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result walletConnectSavedSessions$lambda$1;
                walletConnectSavedSessions$lambda$1 = WalletConnectRepositoryImpl.getWalletConnectSavedSessions$lambda$1(Function1.this, obj);
                return walletConnectSavedSessions$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "walletConnectSessionsDao…toSuccess()\n            }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Flowable<Result<List<WCSessionStoreItem>>> handleError = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends WCSessionStoreItem>>>() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends WCSessionStoreItem>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
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
