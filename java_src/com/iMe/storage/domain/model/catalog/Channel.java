package com.iMe.storage.domain.model.catalog;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Channel.kt */
/* loaded from: classes3.dex */
public final class Channel {
    private final ChatType chatType;
    private final String createdAt;
    private final String description;

    /* renamed from: id */
    private final long f400id;
    private final long membersCount;
    private final String photo;
    private final String shortname;
    private final long telegramId;
    private final String title;
    private final String updatedAt;
    private final boolean verified;

    public final ChatType component1() {
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
        return this.f400id;
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

    public final Channel copy(ChatType chatType, String createdAt, String description, long j, long j2, String photo, String shortname, long j3, String title, String updatedAt, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        return new Channel(chatType, createdAt, description, j, j2, photo, shortname, j3, title, updatedAt, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Channel) {
            Channel channel = (Channel) obj;
            return this.chatType == channel.chatType && Intrinsics.areEqual(this.createdAt, channel.createdAt) && Intrinsics.areEqual(this.description, channel.description) && this.f400id == channel.f400id && this.membersCount == channel.membersCount && Intrinsics.areEqual(this.photo, channel.photo) && Intrinsics.areEqual(this.shortname, channel.shortname) && this.telegramId == channel.telegramId && Intrinsics.areEqual(this.title, channel.title) && Intrinsics.areEqual(this.updatedAt, channel.updatedAt) && this.verified == channel.verified;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((this.chatType.hashCode() * 31) + this.createdAt.hashCode()) * 31) + this.description.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f400id)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.membersCount)) * 31) + this.photo.hashCode()) * 31) + this.shortname.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.telegramId)) * 31) + this.title.hashCode()) * 31) + this.updatedAt.hashCode()) * 31;
        boolean z = this.verified;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "Channel(chatType=" + this.chatType + ", createdAt=" + this.createdAt + ", description=" + this.description + ", id=" + this.f400id + ", membersCount=" + this.membersCount + ", photo=" + this.photo + ", shortname=" + this.shortname + ", telegramId=" + this.telegramId + ", title=" + this.title + ", updatedAt=" + this.updatedAt + ", verified=" + this.verified + ')';
    }

    public Channel(ChatType chatType, String createdAt, String description, long j, long j2, String photo, String shortname, long j3, String title, String updatedAt, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
        this.chatType = chatType;
        this.createdAt = createdAt;
        this.description = description;
        this.f400id = j;
        this.membersCount = j2;
        this.photo = photo;
        this.shortname = shortname;
        this.telegramId = j3;
        this.title = title;
        this.updatedAt = updatedAt;
        this.verified = z;
    }

    public final ChatType getChatType() {
        return this.chatType;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getId() {
        return this.f400id;
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
