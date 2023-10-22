package com.iMe.storage.data.mapper.fragment;

import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentSessionDataResponse;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentSessionData;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentSessionDataMapping.kt */
/* loaded from: classes3.dex */
public final class TonFragmentSessionDataMappingKt {
    public static final TonFragmentSessionData mapToDomain(TonFragmentSessionDataResponse tonFragmentSessionDataResponse) {
        Intrinsics.checkNotNullParameter(tonFragmentSessionDataResponse, "<this>");
        return new TonFragmentSessionData(tonFragmentSessionDataResponse.getSession(), tonFragmentSessionDataResponse.getSessionPayload(), tonFragmentSessionDataResponse.getHostname(), tonFragmentSessionDataResponse.getClientId());
    }
}
