package com.iMe.storage.data.locale.p027db.model.social;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialNetworkDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.social.SocialNetworkDb */
/* loaded from: classes3.dex */
public final class SocialNetworkDb {
    private final String beforeConnectMessage;
    private final String iconUrl;
    private final boolean isActive;
    private final long profileId;
    private final String social;
    private final String socialElementAvatarUrl;
    private final String socialElementId;
    private final int socialPosition;
    private final String socialUserName;
    private final String socialWebUrl;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialNetworkDb) {
            SocialNetworkDb socialNetworkDb = (SocialNetworkDb) obj;
            return this.profileId == socialNetworkDb.profileId && Intrinsics.areEqual(this.social, socialNetworkDb.social) && Intrinsics.areEqual(this.iconUrl, socialNetworkDb.iconUrl) && this.socialPosition == socialNetworkDb.socialPosition && Intrinsics.areEqual(this.socialElementId, socialNetworkDb.socialElementId) && Intrinsics.areEqual(this.socialElementAvatarUrl, socialNetworkDb.socialElementAvatarUrl) && Intrinsics.areEqual(this.socialUserName, socialNetworkDb.socialUserName) && Intrinsics.areEqual(this.socialWebUrl, socialNetworkDb.socialWebUrl) && this.isActive == socialNetworkDb.isActive && Intrinsics.areEqual(this.beforeConnectMessage, socialNetworkDb.beforeConnectMessage);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.profileId) * 31) + this.social.hashCode()) * 31) + this.iconUrl.hashCode()) * 31) + this.socialPosition) * 31) + this.socialElementId.hashCode()) * 31) + this.socialElementAvatarUrl.hashCode()) * 31) + this.socialUserName.hashCode()) * 31) + this.socialWebUrl.hashCode()) * 31;
        boolean z = this.isActive;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((m724m + i) * 31) + this.beforeConnectMessage.hashCode();
    }

    public String toString() {
        return "SocialNetworkDb(profileId=" + this.profileId + ", social=" + this.social + ", iconUrl=" + this.iconUrl + ", socialPosition=" + this.socialPosition + ", socialElementId=" + this.socialElementId + ", socialElementAvatarUrl=" + this.socialElementAvatarUrl + ", socialUserName=" + this.socialUserName + ", socialWebUrl=" + this.socialWebUrl + ", isActive=" + this.isActive + ", beforeConnectMessage=" + this.beforeConnectMessage + ')';
    }

    public SocialNetworkDb(long j, String social, String iconUrl, int i, String socialElementId, String socialElementAvatarUrl, String socialUserName, String socialWebUrl, boolean z, String beforeConnectMessage) {
        Intrinsics.checkNotNullParameter(social, "social");
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(socialElementId, "socialElementId");
        Intrinsics.checkNotNullParameter(socialElementAvatarUrl, "socialElementAvatarUrl");
        Intrinsics.checkNotNullParameter(socialUserName, "socialUserName");
        Intrinsics.checkNotNullParameter(socialWebUrl, "socialWebUrl");
        Intrinsics.checkNotNullParameter(beforeConnectMessage, "beforeConnectMessage");
        this.profileId = j;
        this.social = social;
        this.iconUrl = iconUrl;
        this.socialPosition = i;
        this.socialElementId = socialElementId;
        this.socialElementAvatarUrl = socialElementAvatarUrl;
        this.socialUserName = socialUserName;
        this.socialWebUrl = socialWebUrl;
        this.isActive = z;
        this.beforeConnectMessage = beforeConnectMessage;
    }

    public final long getProfileId() {
        return this.profileId;
    }

    public final String getSocial() {
        return this.social;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final int getSocialPosition() {
        return this.socialPosition;
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

    public final boolean isActive() {
        return this.isActive;
    }

    public final String getBeforeConnectMessage() {
        return this.beforeConnectMessage;
    }
}
