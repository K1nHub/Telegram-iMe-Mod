package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterUserByUsernameRequest.kt */
/* loaded from: classes4.dex */
public final class TwitterUserByUsernameRequest {
    private final String twitterUserName;

    public static /* synthetic */ TwitterUserByUsernameRequest copy$default(TwitterUserByUsernameRequest twitterUserByUsernameRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = twitterUserByUsernameRequest.twitterUserName;
        }
        return twitterUserByUsernameRequest.copy(str);
    }

    public final String component1() {
        return this.twitterUserName;
    }

    public final TwitterUserByUsernameRequest copy(String twitterUserName) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        return new TwitterUserByUsernameRequest(twitterUserName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TwitterUserByUsernameRequest) && Intrinsics.areEqual(this.twitterUserName, ((TwitterUserByUsernameRequest) obj).twitterUserName);
    }

    public int hashCode() {
        return this.twitterUserName.hashCode();
    }

    public String toString() {
        return "TwitterUserByUsernameRequest(twitterUserName=" + this.twitterUserName + ')';
    }

    public TwitterUserByUsernameRequest(String twitterUserName) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        this.twitterUserName = twitterUserName;
    }

    public final String getTwitterUserName() {
        return this.twitterUserName;
    }
}
