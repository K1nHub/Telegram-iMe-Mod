package com.smedialink.storage.data.datasource.approve;

import com.smedialink.storage.data.datasource.base.SignTransactionDatasource;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: WalletApproveDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletApproveDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<String>> approve(TransactionArgs transactionArgs);
}
