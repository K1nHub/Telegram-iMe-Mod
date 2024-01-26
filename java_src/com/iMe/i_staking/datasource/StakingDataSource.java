package com.iMe.i_staking.datasource;

import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.staking.StakingOperation;
import io.reactivex.Observable;
/* compiled from: StakingDataSource.kt */
/* loaded from: classes3.dex */
public interface StakingDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<StakingOperation>> sendApprovalExecute(String str, TransactionArgs transactionArgs);

    Observable<Result<StakingOperation>> sendClaimExecute(String str, TransactionArgs transactionArgs);

    Observable<Result<StakingOperation>> sendDepositExecute(String str, TransactionArgs transactionArgs);

    Observable<Result<StakingOperation>> sendWithdrawExecute(String str, TransactionArgs transactionArgs);
}
