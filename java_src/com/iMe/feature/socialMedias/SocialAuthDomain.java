package com.iMe.feature.socialMedias;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialDomain.kt */
/* loaded from: classes3.dex */
public final class SocialAuthDomain implements Parcelable {
    public static final Parcelable.Creator<SocialAuthDomain> CREATOR = new Creator();
    private final String authToken;
    private final String authUrl;
    private final SocialType socialType;

    /* compiled from: SocialDomain.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<SocialAuthDomain> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialAuthDomain createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SocialAuthDomain(SocialType.valueOf(parcel.readString()), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialAuthDomain[] newArray(int i) {
            return new SocialAuthDomain[i];
        }
    }

    public SocialAuthDomain() {
        this(null, null, null, 7, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialAuthDomain) {
            SocialAuthDomain socialAuthDomain = (SocialAuthDomain) obj;
            return this.socialType == socialAuthDomain.socialType && Intrinsics.areEqual(this.authUrl, socialAuthDomain.authUrl) && Intrinsics.areEqual(this.authToken, socialAuthDomain.authToken);
        }
        return false;
    }

    public int hashCode() {
        return (((this.socialType.hashCode() * 31) + this.authUrl.hashCode()) * 31) + this.authToken.hashCode();
    }

    public String toString() {
        return "SocialAuthDomain(socialType=" + this.socialType + ", authUrl=" + this.authUrl + ", authToken=" + this.authToken + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.socialType.name());
        out.writeString(this.authUrl);
        out.writeString(this.authToken);
    }

    public SocialAuthDomain(SocialType socialType, String authUrl, String authToken) {
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        Intrinsics.checkNotNullParameter(authUrl, "authUrl");
        Intrinsics.checkNotNullParameter(authToken, "authToken");
        this.socialType = socialType;
        this.authUrl = authUrl;
        this.authToken = authToken;
    }

    public /* synthetic */ SocialAuthDomain(SocialType socialType, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SocialType.EMPTY : socialType, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2);
    }

    public final SocialType getSocialType() {
        return this.socialType;
    }

    public final String getAuthUrl() {
        return this.authUrl;
    }

    public final String getAuthToken() {
        return this.authToken;
    }
}
