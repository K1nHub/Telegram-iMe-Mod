package com.iMe.mapper.wallet;

import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.wallet.token.FoundToken;
import com.iMe.storage.domain.model.wallet.token.Token;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FoundTokenUiMapping.kt */
/* loaded from: classes4.dex */
public final class FoundTokenUiMappingKt {
    public static final FoundTokenItem mapToUi(FoundToken foundToken) {
        Intrinsics.checkNotNullParameter(foundToken, "<this>");
        return new FoundTokenItem(foundToken.getToken().getName(), foundToken.getToken().getTicker(), foundToken.getToken().getAddress(), foundToken.getToken().getAvatarUrl(), foundToken.getToken().getNetworkId(), NetworksHelper.getNetworkById(foundToken.getToken().getNetworkId()).getLogoUrl(), foundToken.isEnabled(), foundToken.isCustom(), !foundToken.getToken().isCoin());
    }

    public static final Token mapToIndexedToken(FoundTokenItem foundTokenItem) {
        Intrinsics.checkNotNullParameter(foundTokenItem, "<this>");
        return new Token(foundTokenItem.getAddress(), foundTokenItem.getNetworkId());
    }
}
