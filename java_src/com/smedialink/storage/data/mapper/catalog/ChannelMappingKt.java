package com.smedialink.storage.data.mapper.catalog;

import com.smedialink.storage.data.network.model.response.catalog.ChannelResponse;
import com.smedialink.storage.domain.model.catalog.Channel;
import com.smedialink.storage.domain.model.catalog.ChatType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;
/* compiled from: ChannelMapping.kt */
/* loaded from: classes3.dex */
public final class ChannelMappingKt {
    public static final Channel mapToDomain(ChannelResponse channelResponse) {
        String drop;
        Intrinsics.checkNotNullParameter(channelResponse, "<this>");
        ChatType byName = ChatType.Companion.getByName(channelResponse.getChatType());
        String createdAt = channelResponse.getCreatedAt();
        String description = channelResponse.getDescription();
        long id = channelResponse.getId();
        long membersCount = channelResponse.getMembersCount();
        String photo = channelResponse.getPhoto();
        if (photo == null) {
            photo = "";
        }
        String shortname = channelResponse.getShortname();
        drop = StringsKt___StringsKt.drop(String.valueOf(channelResponse.getTelegramId()), 4);
        return new Channel(byName, createdAt, description, id, membersCount, photo, shortname, Long.parseLong(drop), channelResponse.getTitle(), channelResponse.getUpdatedAt(), channelResponse.getVerified());
    }
}
