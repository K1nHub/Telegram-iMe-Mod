package com.smedialink.storage.data.repository.firebase;

import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.DynamicLinkData;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: DynamicLinksRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class DynamicLinksRepositoryImpl$getLink$1 extends Lambda implements Function1<PendingDynamicLinkData, Result<? extends DynamicLinkData>> {
    public static final DynamicLinksRepositoryImpl$getLink$1 INSTANCE = new DynamicLinksRepositoryImpl$getLink$1();

    DynamicLinksRepositoryImpl$getLink$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<DynamicLinkData> invoke(PendingDynamicLinkData response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return Result.Companion.success(DynamicLinkData.Companion.parseDynamicLink(response.getLink()));
    }
}
