package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenMapping.kt */
/* loaded from: classes3.dex */
public final class TokenMappingKt {
    public static final TokenDetailed mapToDomain(TokenDetailedResponse tokenDetailedResponse) {
        Intrinsics.checkNotNullParameter(tokenDetailedResponse, "<this>");
        String address = tokenDetailedResponse.getAddress();
        String str = address == null ? "" : address;
        String networkType = tokenDetailedResponse.getNetworkType();
        String avatar = tokenDetailedResponse.getAvatar();
        int decimals = tokenDetailedResponse.getDecimals();
        String ticker = tokenDetailedResponse.getTicker();
        boolean isCoin = tokenDetailedResponse.isCoin();
        String name = tokenDetailedResponse.getName();
        String website = tokenDetailedResponse.getWebsite();
        if (website == null) {
            website = "";
        }
        return new TokenDetailed(str, networkType, avatar, decimals, ticker, isCoin, name, website);
    }

    public static final TokenRequest mapToRequest(Token token) {
        Intrinsics.checkNotNullParameter(token, "<this>");
        return new TokenRequest(token.getAddress(), token.getNetworkId());
    }
}
