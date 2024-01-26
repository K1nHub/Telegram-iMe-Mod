package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.ContentState;
import com.iMe.feature.socialMedias.SocialNetwork;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* compiled from: ProfileUiState.kt */
/* loaded from: classes3.dex */
public final class ProfileUiState {
    private final ArrayList<TLRPC$ChatParticipant> allNotMegaGroupMembers;
    private final ContentState contentState;
    private final ProfileData currentProfile;
    private final boolean hasEditAccess;
    private final List<SocialNetwork> networks;

    public ProfileUiState() {
        this(null, null, false, null, null, 31, null);
    }

    public static /* synthetic */ ProfileUiState copy$default(ProfileUiState profileUiState, ProfileData profileData, ContentState contentState, boolean z, List list, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            profileData = profileUiState.currentProfile;
        }
        if ((i & 2) != 0) {
            contentState = profileUiState.contentState;
        }
        ContentState contentState2 = contentState;
        if ((i & 4) != 0) {
            z = profileUiState.hasEditAccess;
        }
        boolean z2 = z;
        List<SocialNetwork> list2 = list;
        if ((i & 8) != 0) {
            list2 = profileUiState.networks;
        }
        List list3 = list2;
        ArrayList<TLRPC$ChatParticipant> arrayList2 = arrayList;
        if ((i & 16) != 0) {
            arrayList2 = profileUiState.allNotMegaGroupMembers;
        }
        return profileUiState.copy(profileData, contentState2, z2, list3, arrayList2);
    }

    public final ProfileUiState copy(ProfileData currentProfile, ContentState contentState, boolean z, List<SocialNetwork> networks, ArrayList<TLRPC$ChatParticipant> allNotMegaGroupMembers) {
        Intrinsics.checkNotNullParameter(currentProfile, "currentProfile");
        Intrinsics.checkNotNullParameter(contentState, "contentState");
        Intrinsics.checkNotNullParameter(networks, "networks");
        Intrinsics.checkNotNullParameter(allNotMegaGroupMembers, "allNotMegaGroupMembers");
        return new ProfileUiState(currentProfile, contentState, z, networks, allNotMegaGroupMembers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProfileUiState) {
            ProfileUiState profileUiState = (ProfileUiState) obj;
            return Intrinsics.areEqual(this.currentProfile, profileUiState.currentProfile) && this.contentState == profileUiState.contentState && this.hasEditAccess == profileUiState.hasEditAccess && Intrinsics.areEqual(this.networks, profileUiState.networks) && Intrinsics.areEqual(this.allNotMegaGroupMembers, profileUiState.allNotMegaGroupMembers);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.currentProfile.hashCode() * 31) + this.contentState.hashCode()) * 31;
        boolean z = this.hasEditAccess;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((hashCode + i) * 31) + this.networks.hashCode()) * 31) + this.allNotMegaGroupMembers.hashCode();
    }

    public String toString() {
        return "ProfileUiState(currentProfile=" + this.currentProfile + ", contentState=" + this.contentState + ", hasEditAccess=" + this.hasEditAccess + ", networks=" + this.networks + ", allNotMegaGroupMembers=" + this.allNotMegaGroupMembers + ')';
    }

    public ProfileUiState(ProfileData currentProfile, ContentState contentState, boolean z, List<SocialNetwork> networks, ArrayList<TLRPC$ChatParticipant> allNotMegaGroupMembers) {
        Intrinsics.checkNotNullParameter(currentProfile, "currentProfile");
        Intrinsics.checkNotNullParameter(contentState, "contentState");
        Intrinsics.checkNotNullParameter(networks, "networks");
        Intrinsics.checkNotNullParameter(allNotMegaGroupMembers, "allNotMegaGroupMembers");
        this.currentProfile = currentProfile;
        this.contentState = contentState;
        this.hasEditAccess = z;
        this.networks = networks;
        this.allNotMegaGroupMembers = allNotMegaGroupMembers;
    }

    public /* synthetic */ ProfileUiState(ProfileData profileData, ContentState contentState, boolean z, List list, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ProfileData(0L, 0L, null, 7, null) : profileData, (i & 2) != 0 ? ContentState.EMPTY : contentState, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new ArrayList() : list, (i & 16) != 0 ? new ArrayList() : arrayList);
    }

    public final ProfileData getCurrentProfile() {
        return this.currentProfile;
    }

    public final ContentState getContentState() {
        return this.contentState;
    }

    public final boolean getHasEditAccess() {
        return this.hasEditAccess;
    }

    public final List<SocialNetwork> getNetworks() {
        return this.networks;
    }

    public final ArrayList<TLRPC$ChatParticipant> getAllNotMegaGroupMembers() {
        return this.allNotMegaGroupMembers;
    }

    public final boolean hasNoParticipants() {
        return this.allNotMegaGroupMembers.isEmpty();
    }
}
