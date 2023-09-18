package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationDataResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationData;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxParticipationDataMapping.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxParticipationDataMappingKt {
    public static final CryptoBoxParticipationData mapToDomain(CryptoBoxParticipationDataResponse cryptoBoxParticipationDataResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxParticipationDataResponse, "<this>");
        return new CryptoBoxParticipationData(cryptoBoxParticipationDataResponse.getStatus(), cryptoBoxParticipationDataResponse.getTransactionUrl());
    }
}
