package com.iMe.model.twitter;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterInviteItem.kt */
/* loaded from: classes3.dex */
public final class TwitterInviteItem extends NoChildNode {

    /* renamed from: id */
    private final long f358id;
    private final String nickname;

    public static /* synthetic */ TwitterInviteItem copy$default(TwitterInviteItem twitterInviteItem, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = twitterInviteItem.f358id;
        }
        if ((i & 2) != 0) {
            str = twitterInviteItem.nickname;
        }
        return twitterInviteItem.copy(j, str);
    }

    public final long component1() {
        return this.f358id;
    }

    public final String component2() {
        return this.nickname;
    }

    public final TwitterInviteItem copy(long j, String nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        return new TwitterInviteItem(j, nickname);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterInviteItem) {
            TwitterInviteItem twitterInviteItem = (TwitterInviteItem) obj;
            return this.f358id == twitterInviteItem.f358id && Intrinsics.areEqual(this.nickname, twitterInviteItem.nickname);
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f358id) * 31) + this.nickname.hashCode();
    }

    public String toString() {
        return "TwitterInviteItem(id=" + this.f358id + ", nickname=" + this.nickname + ')';
    }

    public final long getId() {
        return this.f358id;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public TwitterInviteItem(long j, String nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.f358id = j;
        this.nickname = nickname;
    }
}
