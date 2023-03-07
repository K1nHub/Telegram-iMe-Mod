package com.smedialink.storage.data.datasource.wallet_connect;

import com.smedialink.storage.data.datasource.base.SignTransactionDatasource;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletConnectDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletConnectDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> sendTransaction(TransactionArgs transactionArgs);
}
