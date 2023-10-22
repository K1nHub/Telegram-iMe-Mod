package com.iMe.storage.data.datasource.cryptobox;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: CryptoBoxDataSource.kt */
/* loaded from: classes3.dex */
public interface CryptoBoxDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> sendApprovalExecute(TransactionArgs transactionArgs);

    Observable<Result<String>> sendCreationExecute(long j, String str, TransactionArgs transactionArgs);

    Observable<Result<String>> sendSuspensionExecute(TransactionArgs transactionArgs);
}
