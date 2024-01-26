package com.iMe.feature.profile;
/* compiled from: ProfileRepository.kt */
/* loaded from: classes3.dex */
public interface ProfileRepository {
    ProfileData getCurrentProfile();

    boolean isMyProfile(ProfileData profileData);

    void saveProfile(ProfileData profileData);
}
