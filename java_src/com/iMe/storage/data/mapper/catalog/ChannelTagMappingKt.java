package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.ChannelTagResponse;
import com.iMe.storage.domain.model.catalog.ChannelTag;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelTagMapping.kt */
/* loaded from: classes4.dex */
public final class ChannelTagMappingKt {
    public static final ChannelTag mapToDomain(ChannelTagResponse channelTagResponse) {
        Intrinsics.checkNotNullParameter(channelTagResponse, "<this>");
        return new ChannelTag(channelTagResponse.getId(), channelTagResponse.getTitle());
    }
}
