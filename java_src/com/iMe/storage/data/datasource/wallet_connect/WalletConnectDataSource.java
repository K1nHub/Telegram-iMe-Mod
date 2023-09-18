package com.iMe.storage.data.datasource.wallet_connect;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletConnectDataSource.kt */
/* loaded from: classes4.dex */
public interface WalletConnectDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> sendTransaction(TransactionArgs transactionArgs);
}
