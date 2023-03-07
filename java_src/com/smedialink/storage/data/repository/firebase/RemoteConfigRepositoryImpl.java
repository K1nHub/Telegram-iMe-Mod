package com.smedialink.storage.data.repository.firebase;

import com.smedialink.storage.data.network.api.google.RemoteConfigApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.domain.repository.firebase.RemoteConfigRepository;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
    public RemoteConfigRepositoryImpl(RemoteConfigApi remoteConfigApi, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(remoteConfigApi, "remoteConfigApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
    }
}
