package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequest;
import com.iMe.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimplexMapping.kt */
/* loaded from: classes3.dex */
public final class SimplexMappingKt {
    public static final BuyingCryptoQuote mapToDomain(GetBuyingCryptoQuoteResponse.CryptoQuote cryptoQuote) {
        Intrinsics.checkNotNullParameter(cryptoQuote, "<this>");
        return new BuyingCryptoQuote(cryptoQuote.getQuoteId(), cryptoQuote.getDigitalMoneyAmount(), cryptoQuote.getFiatMoneyAmount());
    }

    public static final GetBuyingCryptoQuoteRequest mapToRequest(BuyingCryptoQuoteArgs buyingCryptoQuoteArgs) {
        Intrinsics.checkNotNullParameter(buyingCryptoQuoteArgs, "<this>");
        return new GetBuyingCryptoQuoteRequest(buyingCryptoQuoteArgs.getDigitalCurrency().getValue(), buyingCryptoQuoteArgs.getFiatCurrency().getValue(), buyingCryptoQuoteArgs.getRequestedCurrency().getValue(), buyingCryptoQuoteArgs.getAmount(), buyingCryptoQuoteArgs.getNetworkId());
    }
}
