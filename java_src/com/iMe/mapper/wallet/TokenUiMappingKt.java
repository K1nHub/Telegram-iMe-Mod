package com.iMe.mapper.wallet;

import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenUiMapping.kt */
/* loaded from: classes4.dex */
public final class TokenUiMappingKt {
    public static final TokenDetailed mapToDomain(TokenItem tokenItem) {
        Intrinsics.checkNotNullParameter(tokenItem, "<this>");
        return new TokenDetailed(tokenItem.getAddress(), tokenItem.getNetworkId(), tokenItem.getAvatarUrl(), tokenItem.getDecimals(), tokenItem.getTicker(), tokenItem.isCoin(), tokenItem.getName(), tokenItem.getWebsite());
    }

    public static final TokenItem mapToUI(TokenDetailed tokenDetailed) {
        Intrinsics.checkNotNullParameter(tokenDetailed, "<this>");
        return new TokenItem(tokenDetailed.getAddress(), tokenDetailed.getNetworkId(), tokenDetailed.getAvatarUrl(), tokenDetailed.getDecimals(), tokenDetailed.getTicker(), tokenDetailed.isCoin(), tokenDetailed.getName(), tokenDetailed.getWebsite());
    }

    public static final List<TokenItem> mapToUI(List<TokenDetailed> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenDetailed tokenDetailed : list) {
            arrayList.add(mapToUI(tokenDetailed));
        }
        return arrayList;
    }
}
