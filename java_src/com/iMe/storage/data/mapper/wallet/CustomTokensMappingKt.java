package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.wallet.CustomTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTokensMapping.kt */
/* loaded from: classes3.dex */
public final class CustomTokensMappingKt {
    public static final CursoredData<TokenDetailed> mapToDomain(CustomTokensResponse customTokensResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(customTokensResponse, "<this>");
        List<TokenDetailedResponse> tokens = customTokensResponse.getTokens();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenDetailedResponse tokenDetailedResponse : tokens) {
            arrayList.add(TokenMappingKt.mapToDomain(tokenDetailedResponse));
        }
        return new CursoredData<>(arrayList, customTokensResponse.getCursor());
    }
}
