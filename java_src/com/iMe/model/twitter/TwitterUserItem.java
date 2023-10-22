package com.iMe.model.twitter;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: TwitterUserItem.kt */
/* loaded from: classes3.dex */
public final class TwitterUserItem extends NoChildNode {
    private final String avatarUrl;
    private final String name;
    private final String nickname;
    private final TLRPC$User user;

    public static /* synthetic */ TwitterUserItem copy$default(TwitterUserItem twitterUserItem, TLRPC$User tLRPC$User, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            tLRPC$User = twitterUserItem.user;
        }
        if ((i & 2) != 0) {
            str = twitterUserItem.name;
        }
        if ((i & 4) != 0) {
            str2 = twitterUserItem.nickname;
        }
        if ((i & 8) != 0) {
            str3 = twitterUserItem.avatarUrl;
        }
        return twitterUserItem.copy(tLRPC$User, str, str2, str3);
    }

    public final TLRPC$User component1() {
        return this.user;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.nickname;
    }

    public final String component4() {
        return this.avatarUrl;
    }

    public final TwitterUserItem copy(TLRPC$User user, String name, String nickname, String avatarUrl) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        return new TwitterUserItem(user, name, nickname, avatarUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterUserItem) {
            TwitterUserItem twitterUserItem = (TwitterUserItem) obj;
            return Intrinsics.areEqual(this.user, twitterUserItem.user) && Intrinsics.areEqual(this.name, twitterUserItem.name) && Intrinsics.areEqual(this.nickname, twitterUserItem.nickname) && Intrinsics.areEqual(this.avatarUrl, twitterUserItem.avatarUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.user.hashCode() * 31) + this.name.hashCode()) * 31) + this.nickname.hashCode()) * 31) + this.avatarUrl.hashCode();
    }

    public String toString() {
        return "TwitterUserItem(user=" + this.user + ", name=" + this.name + ", nickname=" + this.nickname + ", avatarUrl=" + this.avatarUrl + ')';
    }

    public final TLRPC$User getUser() {
        return this.user;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public TwitterUserItem(TLRPC$User user, String name, String nickname, String avatarUrl) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        this.user = user;
        this.name = name;
        this.nickname = nickname;
        this.avatarUrl = avatarUrl;
    }
}
