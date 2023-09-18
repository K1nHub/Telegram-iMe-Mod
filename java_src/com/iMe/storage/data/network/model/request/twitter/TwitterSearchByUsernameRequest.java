package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterSearchByUsernameRequest.kt */
/* loaded from: classes4.dex */
public final class TwitterSearchByUsernameRequest {
    private final int page;
    private final String twitterUserName;

    public static /* synthetic */ TwitterSearchByUsernameRequest copy$default(TwitterSearchByUsernameRequest twitterSearchByUsernameRequest, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = twitterSearchByUsernameRequest.twitterUserName;
        }
        if ((i2 & 2) != 0) {
            i = twitterSearchByUsernameRequest.page;
        }
        return twitterSearchByUsernameRequest.copy(str, i);
    }

    public final String component1() {
        return this.twitterUserName;
    }

    public final int component2() {
        return this.page;
    }

    public final TwitterSearchByUsernameRequest copy(String twitterUserName, int i) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        return new TwitterSearchByUsernameRequest(twitterUserName, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterSearchByUsernameRequest) {
            TwitterSearchByUsernameRequest twitterSearchByUsernameRequest = (TwitterSearchByUsernameRequest) obj;
            return Intrinsics.areEqual(this.twitterUserName, twitterSearchByUsernameRequest.twitterUserName) && this.page == twitterSearchByUsernameRequest.page;
        }
        return false;
    }

    public int hashCode() {
        return (this.twitterUserName.hashCode() * 31) + this.page;
    }

    public String toString() {
        return "TwitterSearchByUsernameRequest(twitterUserName=" + this.twitterUserName + ", page=" + this.page + ')';
    }

    public TwitterSearchByUsernameRequest(String twitterUserName, int i) {
        Intrinsics.checkNotNullParameter(twitterUserName, "twitterUserName");
        this.twitterUserName = twitterUserName;
        this.page = i;
    }

    public final String getTwitterUserName() {
        return this.twitterUserName;
    }

    public final int getPage() {
        return this.page;
    }
}
