package com.iMe.storage.data.repository.firebase;

import com.iMe.storage.data.network.api.google.RemoteConfigApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
    public RemoteConfigRepositoryImpl(RemoteConfigApi remoteConfigApi, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(remoteConfigApi, "remoteConfigApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
    }
}
