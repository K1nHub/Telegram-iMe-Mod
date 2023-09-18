package com.iMe.storage.data.network.model.request.social;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialBodyRequest.kt */
/* loaded from: classes4.dex */
public final class SocialBodyRequest {
    @SerializedName("socialElementId")
    private final String socialElementId;
    @SerializedName("socialNetwork")
    private final String socialNetwork;
    @SerializedName("telegramChatId")
    private final String telegramChatId;

    public SocialBodyRequest() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ SocialBodyRequest copy$default(SocialBodyRequest socialBodyRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = socialBodyRequest.telegramChatId;
        }
        if ((i & 2) != 0) {
            str2 = socialBodyRequest.socialElementId;
        }
        if ((i & 4) != 0) {
            str3 = socialBodyRequest.socialNetwork;
        }
        return socialBodyRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.telegramChatId;
    }

    public final String component2() {
        return this.socialElementId;
    }

    public final String component3() {
        return this.socialNetwork;
    }

    public final SocialBodyRequest copy(String str, String str2, String str3) {
        return new SocialBodyRequest(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialBodyRequest) {
            SocialBodyRequest socialBodyRequest = (SocialBodyRequest) obj;
            return Intrinsics.areEqual(this.telegramChatId, socialBodyRequest.telegramChatId) && Intrinsics.areEqual(this.socialElementId, socialBodyRequest.socialElementId) && Intrinsics.areEqual(this.socialNetwork, socialBodyRequest.socialNetwork);
        }
        return false;
    }

    public int hashCode() {
        String str = this.telegramChatId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.socialElementId;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.socialNetwork;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "SocialBodyRequest(telegramChatId=" + this.telegramChatId + ", socialElementId=" + this.socialElementId + ", socialNetwork=" + this.socialNetwork + ')';
    }

    public SocialBodyRequest(String str, String str2, String str3) {
        this.telegramChatId = str;
        this.socialElementId = str2;
        this.socialNetwork = str3;
    }

    public /* synthetic */ SocialBodyRequest(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }

    public final String getTelegramChatId() {
        return this.telegramChatId;
    }

    public final String getSocialElementId() {
        return this.socialElementId;
    }

    public final String getSocialNetwork() {
        return this.socialNetwork;
    }
}
