package com.iMe.feature.devTools;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DevUseCase.kt */
/* loaded from: classes4.dex */
public final class DevUseCase {
    private final DevToolRepository devRepository;

    public DevUseCase(DevToolRepository devRepository) {
        Intrinsics.checkNotNullParameter(devRepository, "devRepository");
        this.devRepository = devRepository;
    }

    public final Object getRepoName(Continuation<? super String> continuation) {
        return this.devRepository.getRepoName(continuation);
    }
}
