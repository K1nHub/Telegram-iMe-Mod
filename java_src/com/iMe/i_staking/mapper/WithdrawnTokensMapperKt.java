package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.WithdrawnTokensResponse;
import com.iMe.storage.domain.model.staking.WithdrawnTokens;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WithdrawnTokensMapper.kt */
/* loaded from: classes4.dex */
public final class WithdrawnTokensMapperKt {
    public static final WithdrawnTokens mapToDomain(WithdrawnTokensResponse withdrawnTokensResponse) {
        Intrinsics.checkNotNullParameter(withdrawnTokensResponse, "<this>");
        return new WithdrawnTokens(withdrawnTokensResponse.getPending(), withdrawnTokensResponse.getReady());
    }
}
