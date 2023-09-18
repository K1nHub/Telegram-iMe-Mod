package com.iMe.storage.domain.repository.crypto.ton;

import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: TonConfigRepository.kt */
/* loaded from: classes4.dex */
public interface TonConfigRepository {
    Observable<Result<String>> getTonConfigJsonString();
}
