package com.iMe.storage.domain.interactor.crypto.airdrop;

import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropInteractor.kt */
/* loaded from: classes4.dex */
public final class AirdropInteractor {
    private final AirdropRepository airdropRepository;
    private final SchedulersProvider schedulersProvider;

    public AirdropInteractor(AirdropRepository airdropRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(airdropRepository, "airdropRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.airdropRepository = airdropRepository;
        this.schedulersProvider = schedulersProvider;
    }
}
