package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTokenApprovalResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalMapping.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxTokenApprovalMappingKt {
    public static final CryptoBoxTokenApprovalInfo mapToDomain(CryptoBoxTokenApprovalResponse cryptoBoxTokenApprovalResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxTokenApprovalResponse, "<this>");
        return new CryptoBoxTokenApprovalInfo(cryptoBoxTokenApprovalResponse.getStatus(), TokenMappingKt.mapToDomain(cryptoBoxTokenApprovalResponse.getToken()));
    }
}
