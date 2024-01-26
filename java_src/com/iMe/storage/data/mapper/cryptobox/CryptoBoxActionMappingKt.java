package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxActionResponse;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxActionMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxActionMappingKt {
    public static final CryptoBoxAction mapToDomain(CryptoBoxActionResponse cryptoBoxActionResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxActionResponse, "<this>");
        return new CryptoBoxAction(cryptoBoxActionResponse.getId(), cryptoBoxActionResponse.getBoxId(), cryptoBoxActionResponse.getType(), cryptoBoxActionResponse.getStatus(), NetworksHelper.getNetworkById(cryptoBoxActionResponse.getNetwork()), cryptoBoxActionResponse.getTxHash(), cryptoBoxActionResponse.getTxUrl(), TokenMappingKt.mapToDomain(cryptoBoxActionResponse.getToken()), cryptoBoxActionResponse.getTokenAmount(), TokenMappingKt.mapToDomain(cryptoBoxActionResponse.getFeeToken()), cryptoBoxActionResponse.getFeeAmount(), cryptoBoxActionResponse.getIssuedAt(), cryptoBoxActionResponse.getSettledAt());
    }
}
