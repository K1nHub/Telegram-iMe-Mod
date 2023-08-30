package com.iMe.feature.profile;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProfileUseCase.kt */
/* loaded from: classes3.dex */
public final class ProfileUseCase {
    private final ProfileRepository profileRepository;

    public ProfileUseCase(ProfileRepository profileRepository) {
        Intrinsics.checkNotNullParameter(profileRepository, "profileRepository");
        this.profileRepository = profileRepository;
    }

    public final void saveProfile(ProfileData profileData) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        this.profileRepository.saveProfile(profileData);
    }
}
