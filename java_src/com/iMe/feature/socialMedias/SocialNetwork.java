package com.iMe.feature.socialMedias;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialDomain.kt */
/* loaded from: classes3.dex */
public final class SocialNetwork implements Parcelable {
    public static final Parcelable.Creator<SocialNetwork> CREATOR = new Creator();
    private final String beforeConnectMessage;
    private final boolean hasEditAccess;
    private final String icon;
    private final boolean isActive;
    private final SocialType social;
    private final String socialElementAvatarUrl;
    private final String socialElementId;
    private final String socialName;
    private final int socialPosition;
    private final String socialUserName;
    private final String socialWebUrl;

    /* compiled from: SocialDomain.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<SocialNetwork> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialNetwork createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SocialNetwork(SocialType.valueOf(parcel.readString()), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialNetwork[] newArray(int i) {
            return new SocialNetwork[i];
        }
    }

    public SocialNetwork() {
        this(null, null, null, 0, null, null, null, null, false, false, null, 2047, null);
    }

    public final SocialNetwork copy(SocialType social, String socialName, String icon, int i, String socialElementId, String socialElementAvatarUrl, String socialUserName, String socialWebUrl, boolean z, boolean z2, String beforeConnectMessage) {
        Intrinsics.checkNotNullParameter(social, "social");
        Intrinsics.checkNotNullParameter(socialName, "socialName");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(socialElementId, "socialElementId");
        Intrinsics.checkNotNullParameter(socialElementAvatarUrl, "socialElementAvatarUrl");
        Intrinsics.checkNotNullParameter(socialUserName, "socialUserName");
        Intrinsics.checkNotNullParameter(socialWebUrl, "socialWebUrl");
        Intrinsics.checkNotNullParameter(beforeConnectMessage, "beforeConnectMessage");
        return new SocialNetwork(social, socialName, icon, i, socialElementId, socialElementAvatarUrl, socialUserName, socialWebUrl, z, z2, beforeConnectMessage);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialNetwork) {
            SocialNetwork socialNetwork = (SocialNetwork) obj;
            return this.social == socialNetwork.social && Intrinsics.areEqual(this.socialName, socialNetwork.socialName) && Intrinsics.areEqual(this.icon, socialNetwork.icon) && this.socialPosition == socialNetwork.socialPosition && Intrinsics.areEqual(this.socialElementId, socialNetwork.socialElementId) && Intrinsics.areEqual(this.socialElementAvatarUrl, socialNetwork.socialElementAvatarUrl) && Intrinsics.areEqual(this.socialUserName, socialNetwork.socialUserName) && Intrinsics.areEqual(this.socialWebUrl, socialNetwork.socialWebUrl) && this.isActive == socialNetwork.isActive && this.hasEditAccess == socialNetwork.hasEditAccess && Intrinsics.areEqual(this.beforeConnectMessage, socialNetwork.beforeConnectMessage);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((this.social.hashCode() * 31) + this.socialName.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.socialPosition) * 31) + this.socialElementId.hashCode()) * 31) + this.socialElementAvatarUrl.hashCode()) * 31) + this.socialUserName.hashCode()) * 31) + this.socialWebUrl.hashCode()) * 31;
        boolean z = this.isActive;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.hasEditAccess;
        return ((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.beforeConnectMessage.hashCode();
    }

    public String toString() {
        return "SocialNetwork(social=" + this.social + ", socialName=" + this.socialName + ", icon=" + this.icon + ", socialPosition=" + this.socialPosition + ", socialElementId=" + this.socialElementId + ", socialElementAvatarUrl=" + this.socialElementAvatarUrl + ", socialUserName=" + this.socialUserName + ", socialWebUrl=" + this.socialWebUrl + ", isActive=" + this.isActive + ", hasEditAccess=" + this.hasEditAccess + ", beforeConnectMessage=" + this.beforeConnectMessage + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.social.name());
        out.writeString(this.socialName);
        out.writeString(this.icon);
        out.writeInt(this.socialPosition);
        out.writeString(this.socialElementId);
        out.writeString(this.socialElementAvatarUrl);
        out.writeString(this.socialUserName);
        out.writeString(this.socialWebUrl);
        out.writeInt(this.isActive ? 1 : 0);
        out.writeInt(this.hasEditAccess ? 1 : 0);
        out.writeString(this.beforeConnectMessage);
    }

    public SocialNetwork(SocialType social, String socialName, String icon, int i, String socialElementId, String socialElementAvatarUrl, String socialUserName, String socialWebUrl, boolean z, boolean z2, String beforeConnectMessage) {
        Intrinsics.checkNotNullParameter(social, "social");
        Intrinsics.checkNotNullParameter(socialName, "socialName");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(socialElementId, "socialElementId");
        Intrinsics.checkNotNullParameter(socialElementAvatarUrl, "socialElementAvatarUrl");
        Intrinsics.checkNotNullParameter(socialUserName, "socialUserName");
        Intrinsics.checkNotNullParameter(socialWebUrl, "socialWebUrl");
        Intrinsics.checkNotNullParameter(beforeConnectMessage, "beforeConnectMessage");
        this.social = social;
        this.socialName = socialName;
        this.icon = icon;
        this.socialPosition = i;
        this.socialElementId = socialElementId;
        this.socialElementAvatarUrl = socialElementAvatarUrl;
        this.socialUserName = socialUserName;
        this.socialWebUrl = socialWebUrl;
        this.isActive = z;
        this.hasEditAccess = z2;
        this.beforeConnectMessage = beforeConnectMessage;
    }

    public /* synthetic */ SocialNetwork(SocialType socialType, String str, String str2, int i, String str3, String str4, String str5, String str6, boolean z, boolean z2, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? SocialType.EMPTY : socialType, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? "" : str3, (i2 & 32) != 0 ? "" : str4, (i2 & 64) != 0 ? "" : str5, (i2 & 128) != 0 ? "" : str6, (i2 & 256) != 0 ? false : z, (i2 & 512) == 0 ? z2 : false, (i2 & 1024) == 0 ? str7 : "");
    }

    public final SocialType getSocial() {
        return this.social;
    }

    public final String getSocialName() {
        return this.socialName;
    }

    public final String getIcon() {
        return this.icon;
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

    public final boolean getHasEditAccess() {
        return this.hasEditAccess;
    }

    public final String getBeforeConnectMessage() {
        return this.beforeConnectMessage;
    }
}
