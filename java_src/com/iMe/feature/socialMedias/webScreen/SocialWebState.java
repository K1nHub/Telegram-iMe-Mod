package com.iMe.feature.socialMedias.webScreen;

import com.iMe.feature.socialMedias.SocialNetwork;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialWebState.kt */
/* loaded from: classes4.dex */
public final class SocialWebState {
    private final boolean isLoading;
    private final SocialNetwork socialNetwork;
    private final String titleText;

    public SocialWebState() {
        this(null, null, false, 7, null);
    }

    public static /* synthetic */ SocialWebState copy$default(SocialWebState socialWebState, String str, SocialNetwork socialNetwork, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = socialWebState.titleText;
        }
        if ((i & 2) != 0) {
            socialNetwork = socialWebState.socialNetwork;
        }
        if ((i & 4) != 0) {
            z = socialWebState.isLoading;
        }
        return socialWebState.copy(str, socialNetwork, z);
    }

    public final SocialWebState copy(String titleText, SocialNetwork socialNetwork, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        return new SocialWebState(titleText, socialNetwork, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialWebState) {
            SocialWebState socialWebState = (SocialWebState) obj;
            return Intrinsics.areEqual(this.titleText, socialWebState.titleText) && Intrinsics.areEqual(this.socialNetwork, socialWebState.socialNetwork) && this.isLoading == socialWebState.isLoading;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.titleText.hashCode() * 31) + this.socialNetwork.hashCode()) * 31;
        boolean z = this.isLoading;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SocialWebState(titleText=" + this.titleText + ", socialNetwork=" + this.socialNetwork + ", isLoading=" + this.isLoading + ')';
    }

    public SocialWebState(String titleText, SocialNetwork socialNetwork, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        this.titleText = titleText;
        this.socialNetwork = socialNetwork;
        this.isLoading = z;
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public /* synthetic */ SocialWebState(String str, SocialNetwork socialNetwork, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        SocialWebState socialWebState;
        boolean z2;
        String str2 = (i & 1) != 0 ? "" : str;
        SocialNetwork socialNetwork2 = (i & 2) != 0 ? new SocialNetwork(null, null, null, 0, null, null, null, null, false, false, null, 2047, null) : socialNetwork;
        if ((i & 4) != 0) {
            z2 = false;
            socialWebState = this;
        } else {
            socialWebState = this;
            z2 = z;
        }
        new SocialWebState(str2, socialNetwork2, z2);
    }

    public final SocialNetwork getSocialNetwork() {
        return this.socialNetwork;
    }

    public final boolean isLoading() {
        return this.isLoading;
    }
}
