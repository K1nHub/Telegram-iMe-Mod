package com.smedialink.storage.domain.interactor.firebase;

import com.smedialink.storage.domain.repository.firebase.RemoteConfigRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
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
}
