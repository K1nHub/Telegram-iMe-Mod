package com.smedialink.storage.data.mapper.catalog;

import com.smedialink.storage.data.network.model.response.catalog.ChannelCountryResponse;
import com.smedialink.storage.domain.model.catalog.ChannelCountry;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelCountryMapping.kt */
/* loaded from: classes3.dex */
public final class ChannelCountryMappingKt {
    public static final ChannelCountry mapToDomain(ChannelCountryResponse channelCountryResponse) {
        Intrinsics.checkNotNullParameter(channelCountryResponse, "<this>");
        return new ChannelCountry(channelCountryResponse.getCode(), channelCountryResponse.getId(), channelCountryResponse.getTitle());
    }
}
