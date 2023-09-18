package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedWithRateResponse;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenDetailedWithRate;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenMapping.kt */
/* loaded from: classes4.dex */
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

    public static final TokenDetailedWithRate mapToDomain(TokenDetailedWithRateResponse tokenDetailedWithRateResponse) {
        Intrinsics.checkNotNullParameter(tokenDetailedWithRateResponse, "<this>");
        String address = tokenDetailedWithRateResponse.getAddress();
        String str = address == null ? "" : address;
        String networkType = tokenDetailedWithRateResponse.getNetworkType();
        String avatar = tokenDetailedWithRateResponse.getAvatar();
        int decimals = tokenDetailedWithRateResponse.getDecimals();
        String ticker = tokenDetailedWithRateResponse.getTicker();
        boolean isCoin = tokenDetailedWithRateResponse.isCoin();
        String name = tokenDetailedWithRateResponse.getName();
        String website = tokenDetailedWithRateResponse.getWebsite();
        return new TokenDetailedWithRate(new TokenDetailed(str, networkType, avatar, decimals, ticker, isCoin, name, website == null ? "" : website), FiatValueMappingKt.mapToDomain(tokenDetailedWithRateResponse.getRateToFiat()));
    }

    public static final TokenRequest mapToRequest(Token token) {
        Intrinsics.checkNotNullParameter(token, "<this>");
        return new TokenRequest(token.getAddress(), token.getNetworkId());
    }
}
