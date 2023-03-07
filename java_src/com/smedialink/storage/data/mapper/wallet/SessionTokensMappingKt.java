package com.smedialink.storage.data.mapper.wallet;

import com.smedialink.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionTokensMapping.kt */
/* loaded from: classes3.dex */
public final class SessionTokensMappingKt {
    public static final SessionTokens mapToDomain(SessionTokensResponse sessionTokensResponse) {
        Intrinsics.checkNotNullParameter(sessionTokensResponse, "<this>");
        return new SessionTokens(sessionTokensResponse.getToken(), sessionTokensResponse.getRefreshToken());
    }
}
