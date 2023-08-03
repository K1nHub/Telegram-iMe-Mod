package com.iMe.bots.data.model.network;

import com.google.gson.annotations.SerializedName;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotVoteInfo.kt */
/* loaded from: classes3.dex */
public final class BotVoteInfo {
    @SerializedName("created")
    private final long created;
    @SerializedName("bot_id")
    private final String name;
    @SerializedName("rating")
    private final String rating;
    @SerializedName("user_id")
    private final String userId;

    public static /* synthetic */ BotVoteInfo copy$default(BotVoteInfo botVoteInfo, String str, long j, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = botVoteInfo.userId;
        }
        if ((i & 2) != 0) {
            j = botVoteInfo.created;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            str2 = botVoteInfo.name;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            str3 = botVoteInfo.rating;
        }
        return botVoteInfo.copy(str, j2, str4, str3);
    }

    public final String component1() {
        return this.userId;
    }

    public final long component2() {
        return this.created;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.rating;
    }

    public final BotVoteInfo copy(String userId, long j, String name, String rating) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rating, "rating");
        return new BotVoteInfo(userId, j, name, rating);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BotVoteInfo) {
            BotVoteInfo botVoteInfo = (BotVoteInfo) obj;
            return Intrinsics.areEqual(this.userId, botVoteInfo.userId) && this.created == botVoteInfo.created && Intrinsics.areEqual(this.name, botVoteInfo.name) && Intrinsics.areEqual(this.rating, botVoteInfo.rating);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.userId.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.created)) * 31) + this.name.hashCode()) * 31) + this.rating.hashCode();
    }

    public String toString() {
        return "BotVoteInfo(userId=" + this.userId + ", created=" + this.created + ", name=" + this.name + ", rating=" + this.rating + ')';
    }

    public BotVoteInfo(String userId, long j, String name, String rating) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rating, "rating");
        this.userId = userId;
        this.created = j;
        this.name = name;
        this.rating = rating;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final long getCreated() {
        return this.created;
    }

    public final String getName() {
        return this.name;
    }

    public final String getRating() {
        return this.rating;
    }
}
