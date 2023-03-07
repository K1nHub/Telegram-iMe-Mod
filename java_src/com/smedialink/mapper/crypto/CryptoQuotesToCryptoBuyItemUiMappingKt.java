package com.smedialink.mapper.crypto;

import com.smedialink.model.wallet.crypto.buy.CryptoBuyItem;
import com.smedialink.storage.domain.model.billing.CryptoProduct;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoQuotesToCryptoBuyItemUiMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoQuotesToCryptoBuyItemUiMappingKt {
    public static final List<CryptoBuyItem> mapToUI(List<BuyingCryptoQuote> list, TokenInfo tokenInfo) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BuyingCryptoQuote buyingCryptoQuote : list) {
            arrayList.add(new CryptoBuyItem(tokenInfo, CryptoProduct.Companion.getProductByPrice(buyingCryptoQuote.getFiatMoneyAmount()), buyingCryptoQuote));
        }
        return arrayList;
    }
}
