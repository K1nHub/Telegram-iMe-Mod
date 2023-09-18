package com.iMe.storage.data.network.model.response.social;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialNetworksRaw.kt */
/* loaded from: classes4.dex */
public final class Network {
    @SerializedName("beforeConnectMessage")
    private final String beforeConnectMessage;
    @SerializedName("icon")
    private final String icon;
    @SerializedName("isActive")
    private final Boolean isActive;
    @SerializedName("social")
    private final String social;
    @SerializedName("socialElementAvatarUrl")
    private final String socialElementAvatarUrl;
    @SerializedName("socialElementId")
    private final String socialElementId;
    @SerializedName("socialUserName")
    private final String socialUserName;
    @SerializedName("socialWebUrl")
    private final String socialWebUrl;

    public final String component1() {
        return this.social;
    }

    public final String component2() {
        return this.icon;
    }

    public final String component3() {
        return this.socialElementId;
    }

    public final String component4() {
        return this.socialElementAvatarUrl;
    }

    public final String component5() {
        return this.socialUserName;
    }

    public final String component6() {
        return this.socialWebUrl;
    }

    public final Boolean component7() {
        return this.isActive;
    }

    public final String component8() {
        return this.beforeConnectMessage;
    }

    public final Network copy(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, String str7) {
        return new Network(str, str2, str3, str4, str5, str6, bool, str7);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Network) {
            Network network = (Network) obj;
            return Intrinsics.areEqual(this.social, network.social) && Intrinsics.areEqual(this.icon, network.icon) && Intrinsics.areEqual(this.socialElementId, network.socialElementId) && Intrinsics.areEqual(this.socialElementAvatarUrl, network.socialElementAvatarUrl) && Intrinsics.areEqual(this.socialUserName, network.socialUserName) && Intrinsics.areEqual(this.socialWebUrl, network.socialWebUrl) && Intrinsics.areEqual(this.isActive, network.isActive) && Intrinsics.areEqual(this.beforeConnectMessage, network.beforeConnectMessage);
        }
        return false;
    }

    public int hashCode() {
        String str = this.social;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.icon;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.socialElementId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.socialElementAvatarUrl;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.socialUserName;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.socialWebUrl;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool = this.isActive;
        int hashCode7 = (hashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str7 = this.beforeConnectMessage;
        return hashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "Network(social=" + this.social + ", icon=" + this.icon + ", socialElementId=" + this.socialElementId + ", socialElementAvatarUrl=" + this.socialElementAvatarUrl + ", socialUserName=" + this.socialUserName + ", socialWebUrl=" + this.socialWebUrl + ", isActive=" + this.isActive + ", beforeConnectMessage=" + this.beforeConnectMessage + ')';
    }

    public Network(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, String str7) {
        this.social = str;
        this.icon = str2;
        this.socialElementId = str3;
        this.socialElementAvatarUrl = str4;
        this.socialUserName = str5;
        this.socialWebUrl = str6;
        this.isActive = bool;
        this.beforeConnectMessage = str7;
    }

    public final String getSocial() {
        return this.social;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getSocialElementId() {
        return this.socialElementId;
    }

    public final String getSocialElementAvatarUrl() {
        return this.socialElementAvatarUrl;
    }

    public final String getSocialUserName() {
        return this.socialUserName;
    }

    public final String getSocialWebUrl() {
        return this.socialWebUrl;
    }

    public final Boolean isActive() {
        return this.isActive;
    }

    public final String getBeforeConnectMessage() {
        return this.beforeConnectMessage;
    }
}
