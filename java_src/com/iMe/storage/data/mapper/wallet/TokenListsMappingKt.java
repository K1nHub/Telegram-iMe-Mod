package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.wallet.TokenListResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenListsResponse;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenListsMapping.kt */
/* loaded from: classes4.dex */
public final class TokenListsMappingKt {
    public static final TokenListsData mapToDomain(TokenListsResponse tokenListsResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tokenListsResponse, "<this>");
        List<TokenListResponse> tokenLists = tokenListsResponse.getTokenLists();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokenLists, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenListResponse tokenListResponse : tokenLists) {
            arrayList.add(mapToDomain(tokenListResponse));
        }
        return new TokenListsData(arrayList, tokenListsResponse.getVerifiedSize());
    }

    public static final TokenListInfo mapToDomain(TokenListResponse tokenListResponse) {
        Intrinsics.checkNotNullParameter(tokenListResponse, "<this>");
        return new TokenListInfo(tokenListResponse.isVerified(), tokenListResponse.getName(), tokenListResponse.getIcon(), tokenListResponse.getUrl());
    }
}
