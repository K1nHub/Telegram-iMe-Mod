package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.wallet.FoundTokenResponse;
import com.iMe.storage.data.network.model.response.wallet.FoundTokenWithFamilyResponse;
import com.iMe.storage.data.network.model.response.wallet.TokensSearchResponse;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.FoundToken;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensSearchResponseMapping.kt */
/* loaded from: classes4.dex */
public final class TokensSearchResponseMappingKt {
    public static final CursoredData<FoundTokenWithFamily> mapToDomain(TokensSearchResponse tokensSearchResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tokensSearchResponse, "<this>");
        List<FoundTokenWithFamilyResponse> tokens = tokensSearchResponse.getTokens();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FoundTokenWithFamilyResponse foundTokenWithFamilyResponse : tokens) {
            arrayList.add(mapToDomain(foundTokenWithFamilyResponse));
        }
        return new CursoredData<>(arrayList, tokensSearchResponse.getCursor());
    }

    public static final FoundTokenWithFamily mapToDomain(FoundTokenWithFamilyResponse foundTokenWithFamilyResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(foundTokenWithFamilyResponse, "<this>");
        FoundToken mapToDomain = mapToDomain(foundTokenWithFamilyResponse.getToken());
        List<FoundTokenResponse> family = foundTokenWithFamilyResponse.getFamily();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(family, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FoundTokenResponse foundTokenResponse : family) {
            arrayList.add(mapToDomain(foundTokenResponse));
        }
        return new FoundTokenWithFamily(mapToDomain, arrayList);
    }

    public static final FoundToken mapToDomain(FoundTokenResponse foundTokenResponse) {
        Intrinsics.checkNotNullParameter(foundTokenResponse, "<this>");
        String address = foundTokenResponse.getAddress();
        String str = address == null ? "" : address;
        String networkType = foundTokenResponse.getNetworkType();
        String avatar = foundTokenResponse.getAvatar();
        int decimals = foundTokenResponse.getDecimals();
        String ticker = foundTokenResponse.getTicker();
        boolean isCoin = foundTokenResponse.isCoin();
        String name = foundTokenResponse.getName();
        String website = foundTokenResponse.getWebsite();
        return new FoundToken(new TokenDetailed(str, networkType, avatar, decimals, ticker, isCoin, name, website == null ? "" : website), foundTokenResponse.isSwitchOn(), foundTokenResponse.isCustom());
    }
}
