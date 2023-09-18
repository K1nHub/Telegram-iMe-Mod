package com.iMe.storage.data.datasource.approve;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletApproveDataSource.kt */
/* loaded from: classes4.dex */
public interface WalletApproveDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> approve(TransactionArgs transactionArgs);
}
