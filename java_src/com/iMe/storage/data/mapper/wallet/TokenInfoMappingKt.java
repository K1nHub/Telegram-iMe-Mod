package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.wallet.TokenInfoResponse;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenInfoMapping.kt */
/* loaded from: classes3.dex */
public final class TokenInfoMappingKt {
    public static final Pair<TokenDetailed, Boolean> mapToDomain(TokenInfoResponse tokenInfoResponse) {
        Intrinsics.checkNotNullParameter(tokenInfoResponse, "<this>");
        return TuplesKt.m149to(TokenMappingKt.mapToDomain(tokenInfoResponse.getToken()), Boolean.valueOf(tokenInfoResponse.isCustom()));
    }
}
