package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cancel.CancelTransactionDataResponse;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelMapping.kt */
/* loaded from: classes3.dex */
public final class CancelMappingKt {
    public static final CryptoCancelMetadata mapToDomain(CancelTransactionDataResponse cancelTransactionDataResponse) {
        Intrinsics.checkNotNullParameter(cancelTransactionDataResponse, "<this>");
        return new CryptoCancelMetadata(CryptoWalletMappingKt.mapToDomain(cancelTransactionDataResponse.getTransactionParams()), TokenMappingKt.mapToDomain(cancelTransactionDataResponse.getFeeToken()), cancelTransactionDataResponse.getValue());
    }
}
