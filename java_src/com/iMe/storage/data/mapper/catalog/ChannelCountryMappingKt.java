package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.ChannelCountryResponse;
import com.iMe.storage.domain.model.catalog.ChannelCountry;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelCountryMapping.kt */
/* loaded from: classes4.dex */
public final class ChannelCountryMappingKt {
    public static final ChannelCountry mapToDomain(ChannelCountryResponse channelCountryResponse) {
        Intrinsics.checkNotNullParameter(channelCountryResponse, "<this>");
        return new ChannelCountry(channelCountryResponse.getCode(), channelCountryResponse.getId(), channelCountryResponse.getTitle());
    }
}
