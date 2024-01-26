package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationResultResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationResult;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxParticipationResultMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxParticipationResultMappingKt {
    public static final CryptoBoxParticipationResult mapToDomain(CryptoBoxParticipationResultResponse cryptoBoxParticipationResultResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxParticipationResultResponse, "<this>");
        return new CryptoBoxParticipationResult(cryptoBoxParticipationResultResponse.getQueued(), cryptoBoxParticipationResultResponse.getExpectedDurationSec());
    }
}
