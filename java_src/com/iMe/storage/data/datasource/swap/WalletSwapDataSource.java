package com.iMe.storage.data.datasource.swap;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletSwapDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletSwapDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> swap(TransactionArgs transactionArgs);
}
