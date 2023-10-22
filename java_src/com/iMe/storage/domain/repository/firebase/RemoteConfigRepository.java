package com.iMe.storage.domain.repository.firebase;

import com.iMe.storage.domain.model.Result;
import io.reactivex.Single;
/* compiled from: RemoteConfigRepository.kt */
/* loaded from: classes3.dex */
public interface RemoteConfigRepository {
    Single<Result<Boolean>> getBoolean(String str);
}
