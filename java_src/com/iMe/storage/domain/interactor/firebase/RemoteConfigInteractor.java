package com.iMe.storage.domain.interactor.firebase;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.firebase.RemoteConfigRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Single;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteConfigInteractor.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigInteractor {
    private final RemoteConfigRepository remoteConfigRepository;
    private final SchedulersProvider schedulersProvider;

    public RemoteConfigInteractor(RemoteConfigRepository remoteConfigRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(remoteConfigRepository, "remoteConfigRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.remoteConfigRepository = remoteConfigRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Single<Result<Boolean>> getBoolean(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Single<Result<Boolean>> subscribeOn = this.remoteConfigRepository.getBoolean(key).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "remoteConfigRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
