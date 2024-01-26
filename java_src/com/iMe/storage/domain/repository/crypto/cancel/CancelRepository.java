package com.iMe.storage.domain.repository.crypto.cancel;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import io.reactivex.Observable;
/* compiled from: CancelRepository.kt */
/* loaded from: classes3.dex */
public interface CancelRepository {
    Observable<Result<String>> cancel(CancelArgs cancelArgs);

    Observable<Result<CryptoCancelMetadata>> getCryptoCancelMetadata(String str);
}
