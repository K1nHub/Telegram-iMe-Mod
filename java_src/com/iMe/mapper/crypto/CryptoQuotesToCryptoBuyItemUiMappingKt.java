package com.iMe.mapper.crypto;

import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoQuotesToCryptoBuyItemUiMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoQuotesToCryptoBuyItemUiMappingKt {
    public static final List<CryptoBuyItem> mapToUI(List<BuyingCryptoQuote> list, TokenDetailed tokenDetailed) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(tokenDetailed, "tokenDetailed");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BuyingCryptoQuote buyingCryptoQuote : list) {
            arrayList.add(new CryptoBuyItem(tokenDetailed, CryptoProduct.Companion.getProductByPrice(buyingCryptoQuote.getFiatMoneyAmount()), buyingCryptoQuote));
        }
        return arrayList;
    }
}
