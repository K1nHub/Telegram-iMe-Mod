package com.iMe.mapper.cryptobox;

import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxActionUiMapping.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxActionUiMappingKt {
    public static final CryptoBoxActionItem mapToUi(CryptoBoxAction cryptoBoxAction) {
        Intrinsics.checkNotNullParameter(cryptoBoxAction, "<this>");
        return new CryptoBoxActionItem(cryptoBoxAction.getId(), cryptoBoxAction.getTokenAmount(), cryptoBoxAction.getType(), cryptoBoxAction.getStatus(), cryptoBoxAction.getIssuedAt(), cryptoBoxAction.getTxHash(), cryptoBoxAction.getTxUrl(), TokenUiMappingKt.mapToUI(cryptoBoxAction.getFeeToken()), cryptoBoxAction.getFeeAmount(), TokenUiMappingKt.mapToUI(cryptoBoxAction.getToken()));
    }
}
