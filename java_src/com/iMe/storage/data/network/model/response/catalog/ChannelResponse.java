package com.iMe.storage.data.network.model.response.catalog;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelResponse.kt */
/* loaded from: classes4.dex */
public final class ChannelResponse {
    private final String chatType;
    private final String createdAt;
    private final String description;

    /* renamed from: id */
    private final long f386id;
    private final long membersCount;
    private final String photo;
    private final String shortname;
    private final long telegramId;
    private final String title;
    private final String updatedAt;
    private final boolean verified;

    public final String component1() {
        return this.chatType;
    }

    public final String component10() {
        return this.updatedAt;
    }

    public final boolean component11() {
        return this.verified;
    }

    public final String component2() {
        return this.createdAt;
    }

    public final String component3() {
        return this.description;
    }

    public final long component4() {
        return this.f386id;
    }

    public final long component5() {
        return this.membersCount;
    }

    public final String component6() {
        return this.photo;
    }

    public final String component7() {
        return this.shortname;
    }

    public final long component8() {
        return this.telegramId;
    }

    public final String component9() {
        return this.title;
    }

    public final ChannelResponse copy(String chatType, String createdAt, String description, long j, long j2, String str, String shortname, long j3, String title, String updatedAt, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        return new ChannelResponse(chatType, createdAt, description, j, j2, str, shortname, j3, title, updatedAt, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChannelResponse) {
            ChannelResponse channelResponse = (ChannelResponse) obj;
            return Intrinsics.areEqual(this.chatType, channelResponse.chatType) && Intrinsics.areEqual(this.createdAt, channelResponse.createdAt) && Intrinsics.areEqual(this.description, channelResponse.description) && this.f386id == channelResponse.f386id && this.membersCount == channelResponse.membersCount && Intrinsics.areEqual(this.photo, channelResponse.photo) && Intrinsics.areEqual(this.shortname, channelResponse.shortname) && this.telegramId == channelResponse.telegramId && Intrinsics.areEqual(this.title, channelResponse.title) && Intrinsics.areEqual(this.updatedAt, channelResponse.updatedAt) && this.verified == channelResponse.verified;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.chatType.hashCode() * 31) + this.createdAt.hashCode()) * 31) + this.description.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f386id)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.membersCount)) * 31;
        String str = this.photo;
        int hashCode2 = (((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.shortname.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.telegramId)) * 31) + this.title.hashCode()) * 31) + this.updatedAt.hashCode()) * 31;
        boolean z = this.verified;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode2 + i;
    }

    public String toString() {
        return "ChannelResponse(chatType=" + this.chatType + ", createdAt=" + this.createdAt + ", description=" + this.description + ", id=" + this.f386id + ", membersCount=" + this.membersCount + ", photo=" + this.photo + ", shortname=" + this.shortname + ", telegramId=" + this.telegramId + ", title=" + this.title + ", updatedAt=" + this.updatedAt + ", verified=" + this.verified + ')';
    }

    public ChannelResponse(String chatType, String createdAt, String description, long j, long j2, String str, String shortname, long j3, String title, String updatedAt, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        this.chatType = chatType;
        this.createdAt = createdAt;
        this.description = description;
        this.f386id = j;
        this.membersCount = j2;
        this.photo = str;
        this.shortname = shortname;
        this.telegramId = j3;
        this.title = title;
        this.updatedAt = updatedAt;
        this.verified = z;
    }

    public final String getChatType() {
        return this.chatType;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getId() {
        return this.f386id;
    }

    public final long getMembersCount() {
        return this.membersCount;
    }

    public final String getPhoto() {
        return this.photo;
    }

    public final String getShortname() {
        return this.shortname;
    }

    public final long getTelegramId() {
        return this.telegramId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUpdatedAt() {
        return this.updatedAt;
    }

    public final boolean getVerified() {
        return this.verified;
    }
}
