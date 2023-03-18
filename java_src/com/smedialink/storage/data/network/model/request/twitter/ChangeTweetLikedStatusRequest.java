package com.smedialink.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChangeTweetLikedStatusRequest.kt */
/* loaded from: classes3.dex */
public final class ChangeTweetLikedStatusRequest {
    private final String accessToken;
    private final String postId;

    public static /* synthetic */ ChangeTweetLikedStatusRequest copy$default(ChangeTweetLikedStatusRequest changeTweetLikedStatusRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = changeTweetLikedStatusRequest.postId;
        }
        if ((i & 2) != 0) {
            str2 = changeTweetLikedStatusRequest.accessToken;
        }
        return changeTweetLikedStatusRequest.copy(str, str2);
    }

    public final String component1() {
        return this.postId;
    }

    public final String component2() {
        return this.accessToken;
    }

    public final ChangeTweetLikedStatusRequest copy(String postId, String accessToken) {
        Intrinsics.checkNotNullParameter(postId, "postId");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return new ChangeTweetLikedStatusRequest(postId, accessToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChangeTweetLikedStatusRequest) {
            ChangeTweetLikedStatusRequest changeTweetLikedStatusRequest = (ChangeTweetLikedStatusRequest) obj;
            return Intrinsics.areEqual(this.postId, changeTweetLikedStatusRequest.postId) && Intrinsics.areEqual(this.accessToken, changeTweetLikedStatusRequest.accessToken);
        }
        return false;
    }

    public int hashCode() {
        return (this.postId.hashCode() * 31) + this.accessToken.hashCode();
    }

    public String toString() {
        return "ChangeTweetLikedStatusRequest(postId=" + this.postId + ", accessToken=" + this.accessToken + ')';
    }

    public ChangeTweetLikedStatusRequest(String postId, String accessToken) {
        Intrinsics.checkNotNullParameter(postId, "postId");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.postId = postId;
        this.accessToken = accessToken;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }
}
