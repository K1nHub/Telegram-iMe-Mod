package com.iMe.feature.devTools;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
/* compiled from: DevToolRepository.kt */
/* loaded from: classes4.dex */
public final class DevToolRepository {
    public final Object getRepoName(Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getDefault(), new DevToolRepository$getRepoName$2(null), continuation);
    }
}
