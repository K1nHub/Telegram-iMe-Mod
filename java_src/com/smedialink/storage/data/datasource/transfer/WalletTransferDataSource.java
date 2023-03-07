package com.smedialink.storage.data.datasource.transfer;

import com.smedialink.storage.data.datasource.base.SignTransactionDatasource;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import io.reactivex.Observable;
/* compiled from: WalletTransferDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletTransferDataSource extends SignTransactionDatasource<TransactionArgs> {
    Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType);

    Observable<Result<Boolean>> transfer(TransactionArgs transactionArgs);
}
