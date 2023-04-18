package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.cancel.GetCancelTransactionDataResponse;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelMapping.kt */
/* loaded from: classes3.dex */
public final class CancelMappingKt {
    public static final CryptoCancelMetadata mapToDomain(GetCancelTransactionDataResponse getCancelTransactionDataResponse) {
        Intrinsics.checkNotNullParameter(getCancelTransactionDataResponse, "<this>");
        TransactionParams.Ether mapToDomain = CryptoWalletMappingKt.mapToDomain(getCancelTransactionDataResponse.getTransactionParams());
        TokenCode map = TokenCode.Companion.map(getCancelTransactionDataResponse.getFeeTokenCode());
        String value = getCancelTransactionDataResponse.getValue();
        if (value == null) {
            value = "";
        }
        return new CryptoCancelMetadata(mapToDomain, map, value);
    }
}