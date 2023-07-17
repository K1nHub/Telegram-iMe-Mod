package com.iMe.storage.domain.utils.extentions;

import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenExt.kt */
/* loaded from: classes3.dex */
public final class TokenExtKt {
    public static final Token toIndexedToken(TokenDetailed tokenDetailed) {
        Intrinsics.checkNotNullParameter(tokenDetailed, "<this>");
        return new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId());
    }

    public static final TokenDetailed toTokenDetailed(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return new TokenDetailed("", NetworkType.BSC, binanceTokenBalanceInfo.getLogoUrl(), TokenDetailed.Companion.getBNB().getDecimals(), binanceTokenBalanceInfo.getAssetShortName(), false, binanceTokenBalanceInfo.getAssetName(), "");
    }
}
