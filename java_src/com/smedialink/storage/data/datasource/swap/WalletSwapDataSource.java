package com.smedialink.storage.data.datasource.swap;

import com.smedialink.storage.data.datasource.base.SignTransactionDatasource;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletSwapDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletSwapDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> swap(TransactionArgs transactionArgs);
}
