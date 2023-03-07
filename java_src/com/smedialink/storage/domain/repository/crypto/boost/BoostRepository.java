package com.smedialink.storage.domain.repository.crypto.boost;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import io.reactivex.Observable;
/* compiled from: BoostRepository.kt */
/* loaded from: classes3.dex */
public interface BoostRepository {
    Observable<Result<String>> boost(String str, String str2);

    Observable<Result<TransactionArgs>> getCryptoBoostMetadata(String str);

    Observable<Result<String>> signBoostTransaction(TransactionArgs transactionArgs);
}
