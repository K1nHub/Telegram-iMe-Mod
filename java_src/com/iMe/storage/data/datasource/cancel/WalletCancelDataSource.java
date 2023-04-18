package com.iMe.storage.data.datasource.cancel;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletCancelDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletCancelDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> cancel(TransactionArgs transactionArgs);
}
