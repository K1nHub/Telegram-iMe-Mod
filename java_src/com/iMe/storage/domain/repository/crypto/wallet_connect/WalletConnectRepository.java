package com.iMe.storage.domain.repository.crypto.wallet_connect;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: WalletConnectRepository.kt */
/* loaded from: classes4.dex */
public interface WalletConnectRepository {
    Completable deleteAllWalletConnectSessions();

    Completable deleteWalletConnectSession(String str);

    Observable<Result<WalletConnectProcessedTransaction>> getWalletConnectParamsForCryptoTransaction(WalletConnectTransaction walletConnectTransaction);

    Flowable<Result<List<WCSessionStoreItem>>> getWalletConnectSavedSessions();

    Completable insertWalletConnectSession(WCSessionStoreItem wCSessionStoreItem);

    Observable<Result<String>> sendWalletConnectCryptoTransaction(WalletConnectTransactionArgs walletConnectTransactionArgs);

    Observable<Result<String>> signWalletConnectCryptoTransaction(WalletConnectTransactionArgs walletConnectTransactionArgs);
}
