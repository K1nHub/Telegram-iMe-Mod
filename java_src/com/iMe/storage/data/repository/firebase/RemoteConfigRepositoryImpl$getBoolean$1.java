package com.iMe.storage.data.repository.firebase;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RemoteConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class RemoteConfigRepositoryImpl$getBoolean$1 extends Lambda implements Function1<Boolean, Result<? extends Boolean>> {
    public static final RemoteConfigRepositoryImpl$getBoolean$1 INSTANCE = new RemoteConfigRepositoryImpl$getBoolean$1();

    RemoteConfigRepositoryImpl$getBoolean$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Boolean it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it);
    }
}
