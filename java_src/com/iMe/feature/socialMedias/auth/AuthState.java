package com.iMe.feature.socialMedias.auth;

import com.iMe.feature.socialMedias.SocialType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthState.kt */
/* loaded from: classes4.dex */
public final class AuthState {
    private final boolean isLoading;
    private final SocialType socialType;
    private final String titleText;

    public AuthState() {
        this(null, null, false, 7, null);
    }

    public static /* synthetic */ AuthState copy$default(AuthState authState, String str, SocialType socialType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authState.titleText;
        }
        if ((i & 2) != 0) {
            socialType = authState.socialType;
        }
        if ((i & 4) != 0) {
            z = authState.isLoading;
        }
        return authState.copy(str, socialType, z);
    }

    public final AuthState copy(String titleText, SocialType socialType, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        return new AuthState(titleText, socialType, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AuthState) {
            AuthState authState = (AuthState) obj;
            return Intrinsics.areEqual(this.titleText, authState.titleText) && this.socialType == authState.socialType && this.isLoading == authState.isLoading;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.titleText.hashCode() * 31) + this.socialType.hashCode()) * 31;
        boolean z = this.isLoading;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "AuthState(titleText=" + this.titleText + ", socialType=" + this.socialType + ", isLoading=" + this.isLoading + ')';
    }

    public AuthState(String titleText, SocialType socialType, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        this.titleText = titleText;
        this.socialType = socialType;
        this.isLoading = z;
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public /* synthetic */ AuthState(String str, SocialType socialType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? SocialType.EMPTY : socialType, (i & 4) != 0 ? false : z);
    }

    public final boolean isLoading() {
        return this.isLoading;
    }
}
