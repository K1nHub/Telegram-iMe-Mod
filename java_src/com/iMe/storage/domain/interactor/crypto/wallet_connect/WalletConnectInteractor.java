package com.iMe.storage.domain.interactor.crypto.wallet_connect;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.iMe.storage.domain.repository.crypto.wallet_connect.WalletConnectRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectInteractor.kt */
/* loaded from: classes3.dex */
public final class WalletConnectInteractor {
    private final SchedulersProvider schedulersProvider;
    private final WalletConnectRepository walletConnectRepository;

    public WalletConnectInteractor(SchedulersProvider schedulersProvider, WalletConnectRepository walletConnectRepository) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletConnectRepository, "walletConnectRepository");
        this.schedulersProvider = schedulersProvider;
        this.walletConnectRepository = walletConnectRepository;
    }

    public final Observable<Result<WalletConnectProcessedTransaction>> getWalletConnectParamsForCryptoTransaction(WalletConnectTransaction transaction) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Observable<Result<WalletConnectProcessedTransaction>> subscribeOn = this.walletConnectRepository.getWalletConnectParamsForCryptoTransaction(transaction).startWith((Observable<Result<WalletConnectProcessedTransaction>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> sendWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.walletConnectRepository.sendWalletConnectCryptoTransaction(args).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> signWalletConnectCryptoTransaction(WalletConnectTransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> subscribeOn = this.walletConnectRepository.signWalletConnectCryptoTransaction(args).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Flowable<Result<List<WCSessionStoreItem>>> getWalletConnectSavedSessions() {
        Flowable<Result<List<WCSessionStoreItem>>> subscribeOn = this.walletConnectRepository.getWalletConnectSavedSessions().subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Flowable<Result<List<WCSessionStoreItem>>> getWalletConnectSavedSessionsFirst() {
        Flowable<Result<List<WCSessionStoreItem>>> take = getWalletConnectSavedSessions().take(1L);
        Intrinsics.checkNotNullExpressionValue(take, "getWalletConnectSavedSessions().take(1)");
        return take;
    }

    public final Completable insertWalletConnectSession(WCSessionStoreItem session) {
        Intrinsics.checkNotNullParameter(session, "session");
        Completable subscribeOn = this.walletConnectRepository.insertWalletConnectSession(session).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Completable deleteAllWalletConnectSessions() {
        Completable subscribeOn = this.walletConnectRepository.deleteAllWalletConnectSessions().subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Completable deleteWalletConnectSession(String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Completable subscribeOn = this.walletConnectRepository.deleteWalletConnectSession(sessionKey).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletConnectRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }
}
